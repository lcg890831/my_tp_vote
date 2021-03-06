<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="__PUBLIC__/css/base.css" />
<script src="__PUBLIC__/js/jquery-1.7.1.min.js"></script>
<script src="__PUBLIC__/js/jquery.form.js"></script>
<script src="__PUBLIC__/js/base.js"></script>
<title>edit</title>
</head>
<body>
<h3>系统功能定制</h3>
<form id="category_form" action="__APP__/Category/save" method="post" class="form">
    <input type="hidden" name="id" value="<?php echo ($obj["id"]); ?>">
	<input type="hidden" name="pid" value="<?php echo ($obj["pid"]); ?>">
    <fieldset>
        <ul class="align-list">
            <li style="height:30px;">
                <div id="msg_category" style="display:none;line-height:30px;text-align:center;height:30px;color:#fff;">
                </div>
            </li>
			<?php if(empty($obj)): ?><li>
                <label>上级栏目</label>
                <select id="pid" name="pid" style="padding: 7px;">
					<?php if(is_array($categoryList)): $i = 0; $__LIST__ = $categoryList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>"><?php getDefNavTitle(json_decode($vo['title'],true),$_SESSION['c_lang'],$vo['title']);?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                </select>
				<?php if(($pid)  !=  "12"): ?>&nbsp;&nbsp;&nbsp;<a href="javascript:;" id="category_update" class="edit">修改</a>&nbsp;&nbsp;&nbsp;
				<a href="javascript:;" id="category_delete" class="delete">删除</a><?php endif; ?>
            </li><?php endif; ?>
			<li>
            	<label>选择终端</label>
				<input type="radio" name="hardware" value="pc" checked="checked"> 电脑版&nbsp;&nbsp;&nbsp;
				<input type="radio" name="hardware" value="mobile"> 手机版
            </li>
			<li>
            	<label>选择语言</label>
				<span id="show_lang"></span>
            </li>
            <li>
                <label>栏目标题</label>
                <input name="title" id="title" value="<?php echo ($obj["title"]); ?>" class="type-text">
            </li>
            <li>
                <label>别名 <a href="#" class="issue" title="指的是前台URL路径,如News/index">?</a></label>
                <input name="alias" id="alias" value="<?php echo ($obj["alias"]); ?>" class="type-text">
            </li>
            <li>
                <label>呈现样式 <a href="#" class="issue" title="“列表”和“单页”是关联前后台展示数据方式，“自动”会在后台选择它的下一级栏目">?</a></label>
                <input type="radio" id="tpl_one" name="tpl_one" value="auto"> 自动&nbsp;&nbsp;<input type="radio" id="tpl_one" name="tpl_one" value="list"> 列表&nbsp;&nbsp;<input type="radio" id="tpl_one" name="tpl_one" value="one"> 单页图文&nbsp;&nbsp;
            </li>
            <!--li>
                <label>
                    能否评论<a href="#" class="issue" title="标示这个栏目下的文章是否显示评论">?</a>
                </label>
                <input type="radio" id="is_comment" name="is_comment" value="1">是&nbsp;&nbsp;<input type="radio" id="is_comment" name="is_comment" value="0" checked="checked">否
            </li-->
			<li>
                <label>是否导航<a href="#" class="issue" title="在前台导航栏显示">?</a></label>
                <input type="checkbox" id="is_nav" name="is_nav" value="1">
            </li>
            <li>
                <label>前台自定义URL<a href="#" class="issue" title="例如：News/index/cid/120">?</a></label>
                <input name="furl" id="furl" value="<?php echo ($obj["furl"]); ?>" class="type-text">
            </li>
            <li>
                <label>后台自定义URL<a href="#" class="issue" title="例如：User/index/cid/31">?</a></label>
                <input name="burl" id="burl" value="<?php echo ($obj["burl"]); ?>" class="type-text">
            </li>
            <li>
                <label>排序<a href="#" class="issue" title="使用倒序排列">?</a></label>
                <input name="ordernum" id="ordernum" value="<?php echo ($obj["ordernum"]); ?>" value="10" class="type-text" style="width:100px"> <em>提示：数字最大排最前（关联到前后台排序）</em>
            </li>
			<!--li>
                <label>标签<a href="#" class="issue" title="栏目的搜索关键字">?</a></label>
                <input name="tag" id="tag" value="<?php echo ($obj["tag"]); ?>" class="type-text">
            </li>
            <li>
                <label>描述</label>
                <textarea id="description" name="description" cols="100" rows="3"><?php echo ($obj["description"]); ?></textarea>
            </li-->
            <li>
                <label>现在发布<a href="#" class="issue" title="在网站前台显示">?</a></label>
                <input type="checkbox" id="is_publish" name="is_publish" value="1">
            </li>
            <li>
                <label></label>
				<?php if(!empty($obj)): ?><input type="submit" value="修改栏目" class="button" id="update_button" />
				<?php else: ?>
				<input type="submit" value="添加栏目" class="button button-green" id="add_button" /><?php endif; ?>
				<input type="reset" value="重置" class="button button-red" />
            </li>
        </ul>
    </fieldset>
</form>

<script>
$(function(){
	
	var get_pid = "<?php echo $_GET['id']; ?>";
	var obj_id = "<?php echo $obj['id']; ?>";
	var obj_hardware = "<?php echo $obj['hardware']; ?>";
	var add_hardware = "<?php echo $hardware; ?>";
	
	if( obj_id=='' ) {
		$('#pid').val(get_pid);
	}

	if (add_hardware != '') {
		if(add_hardware=='pc') {
			$('input[name=hardware][value=mobile]').attr('disabled', true);
		} else if(add_hardware=='mobile') {
			$('input[name=hardware][value=pc]').attr('disabled', true);
		}
		$('input[name=hardware][value='+add_hardware+']').attr('checked', true);
	}
	if( obj_hardware!='' ) {
		if(obj_hardware=='pc') {
			$('input[name=hardware][value=mobile]').attr('disabled', true);
		} else if(obj_hardware=='mobile') {
			$('input[name=hardware][value=pc]').attr('disabled', true);
		}
		$('input[name=hardware][value='+obj_hardware+']').attr('checked', true);
	}
	
	var hardware = $('input[name=hardware]:checked').val();
	window.hardwareShowLangs(hardware);

	if( obj_id!='' ) {
		$('#pid').val(obj_id);
		$("input[name=lang][value=<?php echo $obj['lang']; ?>]").attr('checked',true);
		$("input[name=tpl_one][value=<?php echo $obj['tpl_one']; ?>]").attr('checked',true);
		$("input[name=is_publish][value=<?php echo $obj['is_publish']; ?>]").attr('checked',true);
		$("input[name=is_nav][value=<?php echo $obj['is_nav']; ?>]").attr('checked',true);
	} else {
		$("#is_publish").attr("checked",true);
		$("#ordernum").val('30');
	}
	
	jQuery('#category_form').ajaxForm({
		dataType: 'json',
		beforeSubmit: function(arr, $form, options) {
			var lang = jQuery('input[name=lang]:checked').val();
			if( lang == undefined ) {
				window.optMsg('msg_category', '必需选择一个语言！', 'red');
				return false;
			}
			var tpl_one = jQuery('input[name=tpl_one]:checked').val();
			if( tpl_one == undefined ) {
				window.optMsg('msg_category', '请选择呈现样式！', 'red');
				return false;
			}
			if( jQuery('#title').val()=='' ) {
				window.optMsg('msg_category', '请输入栏目标题！', 'red');
				return false;
			}
		},
	    success: function(json){
			var pid = jQuery('#pid').val();
			if (json.result == "success_add") {
				window.optMsg('msg_category', '创建栏目成功！', '#0A8C00');
				parent.frames['leftFrame'].window.reloadCategoryOption(pid);
	        }else if(json.result == "error_add") {
				window.optMsg('msg_category', '创建栏目失败！', 'red');
	        }else if(json.result == "success_update") {
				window.optMsg('msg_category', '更新栏目成功！', '#0A8C00');
				parent.frames['leftFrame'].window.reloadCategoryOption2();
	        }else if(json.result == "error_update") {
				window.optMsg('msg_category', '更新栏目失败！', 'red');
	        }
	    }
	});
	
	$('input[name=hardware]').change(function(){
		window.hardwareShowLangs($(this).val());
	});
	
	$('#category_update').click(function(){
		var id = $('#pid').val();
		window.location.href='__APP__/Category/edit/act/update/id/'+id+'/aid/<?php echo $_GET["aid"]; ?>';
	});
	
	$('#category_delete').click(function(){
		if( confirm('确认要删除此栏目吗？') ) {
			var id = $('#pid').val();
			jQuery.getJSON("__APP__/Category/delete", {'id':id}, function(json){
            	if (json.result == "success_delete") {
					$('#pid').find('option[value='+id+']').remove();
					parent.frames['leftFrame'].window.deleteCategoryOption(id);
					window.optMsg('msg_category', '删除栏目成功！', '#0A8C00');
		        }else if(json.result == "error_delete") {
					window.optMsg('msg_category', '删除栏目失败！', 'red');
		        }
        	});
		}
	});
	
});

function hardwareShowLangs( hardware ) {
	if(hardware=='pc') {
		hardware_id = 3;
	} else if(hardware=='mobile') {
		hardware_id = 4;
	}
	$.getJSON('__APP__/Category/selectLangs',{'pid':hardware_id},function(json){
		if( json ) {
			var radio_str = '';
			$.each(json, function(i,v){
				radio_str += '<input type="radio" name="lang" value="'+v.alias+'"> '+v.title+'&nbsp;&nbsp;&nbsp;';
			});
			$('#show_lang').html(radio_str);
			$('input[name=lang][value=<?php echo ($obj["lang"]); ?>]').attr('checked',true);
		}
	});
}
</script>

</body>
</html>