package com.patrick.pacmall.product;

import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.patrick.pacmall.product.dao.AttrAttrgroupRelationDao;
import com.patrick.pacmall.product.entity.AttrAttrgroupRelationEntity;
import com.patrick.pacmall.product.entity.BrandEntity;
import com.patrick.pacmall.product.service.BrandService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@SpringBootTest
@RunWith(SpringRunner.class)
public class PacmallProductApplicationTests {
    @Autowired
    BrandService brandService;

    @Autowired
    OSS ossClient;

    @Test
    public void testUpload() throws IOException {
//        String endpoint = "oss-cn-guangzhou.aliyuncs.com";
//        String accessKeyId = "LTAI5tHduJ3gp7DamKH4Hyyr";
//        String accessKeySecret = "wk6eSDLoOR7WigwhGoJPuhP5Jtq4HA";
//
//        OSS ossClient = new OSSClientBuilder().build(endpoint, accessKeyId, accessKeySecret);

        InputStream fileInputStream = new FileInputStream("E:\\Wallpapers\\Stack\\patrick.jpg");
        ossClient.putObject("pacmall", "patrick.jpg", fileInputStream);
        ossClient.shutdown();
        System.out.println("上传完成...");
    }

    @Test
    public void contextLoads() {
//        BrandEntity brandEntity = new BrandEntity();
//        brandEntity.setBrandId(1L);
//        brandEntity.setDescript("华子");
//        brandEntity.setName("huawei");
//        brandService.save(brandEntity);
//        System.out.println("保存成功....");
        List<BrandEntity> list = brandService.list(new QueryWrapper<BrandEntity>().eq("brand_id", 1L));
        list.forEach(item -> {
            System.out.println(item);
        });

//        brandService.updateById(brandEntity);
//
//		List<BrandEntity> list = brandService.list();
//		for (BrandEntity brandEntity : list) {
//			System.out.println(brandEntity);
//		}
    }
}
