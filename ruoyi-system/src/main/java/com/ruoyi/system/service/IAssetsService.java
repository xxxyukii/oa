package com.ruoyi.system.service;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.Assets;

import java.util.List;

public interface IAssetsService {
    /** 全ての資産管理リストを取得 */
    public List<Assets> getAssetsList(Assets assets);
    /** 新增资产信息 */
    public int insertAssets(Assets assets);
    /** 资产详细信息 */
    public Assets getAssetByAssetId(Long assetId);
    /** 校验sn码是否唯一 */
    public boolean checkSnNumberUnique(Assets assets);
    /** 修改资产 */
    public int updateAsset(Assets assets);

    public String generateSN(String assetType);

    // 检查 SN 是否唯一
    public boolean isSNUnique(String sn);
    /** 删除资产信息 */
    public int delAssetsByIds(Long[] assetIds);

    /** 指定用户资产详细信息 */
    public List<Assets> getAssetByUserId(Long userId);
    /** 修改资产数量 */
    int reduceQuantity(Long assetId);
}
