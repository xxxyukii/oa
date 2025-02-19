package com.ruoyi.common.core.domain.entity;

import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * 資産管理エンティティクラス
 */
@Data
public class Assets {
    /** 資産番号（主キー） */
    private Long assetId;

    /** 資産名称 */
    private String assetName;

    /** 資産タイプ */
    private String assetType;

    /** ブランド名 */
    private String brand;

    /** モデル名 */
    private String model;

    /** シリアル番号（SN号） */
    private String snNumber;

    /** 出荷日 */
    private LocalDate manufacturingDate;

    /** 入庫日 */
    private LocalDate inboundDate;

    /** 購入バッチ番号 */
    private String purchaseBatch;

    /** 数量 */
    private Integer quantity;

    /** 単位（例: 個、台） */
    private String unit;

    /** 備考 */
    private String remark;

    /** 所属者ID */
    private String userId;
    /** 所属者name */
    private String userName;

    /** 部署ID */
    private Long deptId;

    /** 資産所在位置 */
    private String location;

    /** 状態（例: 正常、修理、廃棄） */
    private Integer status;

    /** 在庫中かどうか（'Y'または'N'） */
    private String isInStock;

    /** 新品かどうか（'Y'または'N'） */
    private String isNew;

    /** 資産管理者ID
     *  值为userId*/
    private Long assetManagerId;
    /** 資産管理者所属人
     *  userName*/
    private String assetManagerName;

    /** 作成日時 */
    private LocalDateTime createdAt;

    /** 更新日時 */
    private LocalDateTime updatedAt;

    /**
     *
     */
    private SysUser sysUser;
    private SysDept sysDept;


}
