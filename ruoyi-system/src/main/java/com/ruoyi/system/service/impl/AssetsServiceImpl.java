package com.ruoyi.system.service.impl;

import com.ruoyi.common.core.domain.entity.Assets;
import com.ruoyi.system.mapper.AssetsMapper;
import com.ruoyi.system.service.IAssetsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class AssetsServiceImpl implements IAssetsService {
    @Autowired
    private AssetsMapper assetsMapper;

    @Override
    /** 全ての資産管理リストを取得 */
    public List<Assets> getAssetsList(Assets assets) {
        return assetsMapper.getAssetsList(assets);
    }

    /**
     * 新增资产信息
     */
    @Override
    public int insertAssets(Assets assets) {
        return assetsMapper.insertAssets(assets);
    }

    /**
     * 资产详细信息
     */
    @Override
    public Assets getAssetByAssetId(Long assetId) {
        return assetsMapper.getAssetByAssetId(assetId);
    }

    @Override
    public boolean checkSnNumberUnique(Assets assets) {
        return false;
    }

    /**
     * 修改资产
     *
     * @param assets
     * @return
     */
    @Override
    public int updateAsset(Assets assets) {
        return assetsMapper.updateAsset(assets);
    }

    // 公司简称
    private static final String COMPANY_ABBREVIATION = "XYZ"; // 假设公司简称是 XYZ
    // 数字资产类型与文字前缀的映射关系
    private static final Map<String, String> ASSET_TYPE_PREFIX_MAP = new HashMap<>();

    static {
        ASSET_TYPE_PREFIX_MAP.put("0", "ELE"); // 0 电子产品
        ASSET_TYPE_PREFIX_MAP.put("1", "ITE"); // 1 IT设备
        ASSET_TYPE_PREFIX_MAP.put("2", "FUR"); // 2 对应办公用品
        ASSET_TYPE_PREFIX_MAP.put("3", "OTH"); // 3 其他
    }

    @Override
    public String generateSN(String assetType) {
        // 根据数字资产类型获取对应的文字前缀，默认为 "OTH"
//        如果传入的 assetType 不在映射表中，默认使用 GEN 作为前缀
        String assetTypePrefix = ASSET_TYPE_PREFIX_MAP.getOrDefault(assetType, "OTH");
        // 生成一个 8 位的随机数字
        String randomPart = String.format("%08d", new Random().nextInt(100000000));

        // 拼接 SN 号（公司简称 + 资产类别前缀 + 随机数字）
        return COMPANY_ABBREVIATION + assetTypePrefix + randomPart;
    }

    @Override
    public boolean isSNUnique(String sn) {
        return false;
    }

    @Override
    public int delAssetsByIds(Long[] assetIds) {
        return assetsMapper.delAssetsByIds(assetIds);
    }

    /**
     * 指定用户资产详细信息
     *
     * @param userId
     */
    @Override
    public List<Assets> getAssetByUserId(Long userId) {
        return assetsMapper.getAssetByUserId(userId);
    }

    /**
     * 修改资产数量
     *
     * @param assetId
     */
    @Override
    public int reduceQuantity(Long assetId) {
        //先查下库存如果没有则应返回form表不成功
        Assets selQuantityByAssetId = assetsMapper.selQuantityByAssetId(assetId);
//        if (selQuantityByAssetId != null && selQuantityByAssetId.getQuantity() > 0) {
//            selQuantityByAssetId.setQuantity(selQuantityByAssetId.getQuantity()-1);
//
//        }

        return assetsMapper.reduceQuantity(assetId);
    }

    @Override
    public int outDepot(Long assetId) {
        Assets selQuantityByAssetId = assetsMapper.selQuantityByAssetId(assetId);
        if (selQuantityByAssetId == null) {
            return 0;
        }
        selQuantityByAssetId.setIsInStock("N");
        assetsMapper.updateAsset(selQuantityByAssetId);
        return 1;
    }
}
