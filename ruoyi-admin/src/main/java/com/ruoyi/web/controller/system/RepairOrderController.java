package com.ruoyi.web.controller.system;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.entity.RepairOrder;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.system.service.IRepairOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

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

}
