package com.ruoyi.system.mapper;

import com.ruoyi.common.core.domain.entity.Assets;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface AssetsMapper {
    /** 全ての資産管理リストを取得 */
    List<Assets> getAssetsList(Assets assets);
    /** 资产详细信息 */
    Assets getAssetByAssetId(Long assetId);

    public int updateAsset(Assets assets);
    /** 新增资产 */
    public int insertAssets(Assets assets);
    /** 删除资产 */
    int delAssetsByIds(Long[] assetIds);
    /** 所属人信息 */
    public List<?> getUserInfo(String userName); //这个在user里写了
    /** 指定用户资产详细信息 */
    public List<Assets> getAssetByUserId(Long userId);

    /**
     * 根据资产id查询库存数量
     */
    Assets selQuantityByAssetId(Long assetId);
    /** 修改资产库存 */
    public int reduceQuantity(Long assetId);
}
