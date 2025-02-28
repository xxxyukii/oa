package com.ruoyi.web.controller.system;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.RepairOrder;
import com.ruoyi.common.core.domain.enums.RepairStatusEnum;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.system.service.IRepairOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/system/repair")
public class RepairOrderController  extends BaseController {
    @Autowired
    private IRepairOrderService repairOrderService;

    @GetMapping("/list")
    @ResponseBody
    public TableDataInfo getRepairList(RepairOrder repairOrder){
        startPage();
        List<RepairOrder> repairOrderList = repairOrderService.getRepairList(repairOrder);
        return getDataTable(repairOrderList);
    }

    /**
     * 申请单详细信息
     * @param repairId 申请单id
     * @return 申请单对象
     */
    @GetMapping("/list/{repairId}")
    public AjaxResult getRepairInfo(@PathVariable("repairId") Long repairId){
        return success(repairOrderService.getRepairInfo(repairId));
    }

    /**
     * 维修单审核
     * @param repairOrder
     * @return
     */
    @PostMapping("/status")
    public AjaxResult repairStatusExamine(@RequestBody RepairOrder repairOrder){
        return toAjax(repairOrderService.repairStatusExamine(repairOrder));
    }

    /**
     * 维修人员确认开始维修
     * @param repairOrder
     * @return
     */
    @PostMapping("/action")
    public AjaxResult repairAction(@RequestBody RepairOrder repairOrder){
        //获取当前登录用户id (从维修人页面中请求的)
        Long currentUserId = getUserId();
        repairOrder.setRepairman(currentUserId);
        if (repairOrder.getProductChange()==0  ) {
            repairOrder.setRepairStatus(RepairStatusEnum.REJECT.getCode());
        }
        repairOrder.setRepairStatus(RepairStatusEnum.AGREE.getCode());
        return toAjax(repairOrderService.repairAction(repairOrder));
    }

}
