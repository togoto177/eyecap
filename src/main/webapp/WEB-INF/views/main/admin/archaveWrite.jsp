						<h4 class="pop_master_tit">
                            ARCHAVE - Write new post
                        </h4>
                        <input type="hidden" id="board_division" name="board_division" value="archave">
                        <input type="checkbox" id="board_notice" name="board_notice" value="1"> Notice
                        <input id="pop_master_write_tit" name="board_title" type="text" placeholder="Title" >
                        <!-- <input id="pop_master_write_serch" name="serch_tit" type="text"> -->
                        
                        <div id="fileDiv">
                        
                        <div class="filebox preview-image" id="fileIndex">
                        <input class="upload-name" id="upload-name0" value="Filename">
                        <label for="input-file" class="fileSearch" id="fileSearch0" idx="0" >SEARCH</label>
                        <input type="file" id="input-file0" name="uploadfile" class="upload-hidden">
                        </div>
<!--                         <div class="filebox preview-image" id="fileIndex">
                        <input class="upload-name" id="upload-name1" value="Filename">
                        <label for="input-file" class="fileSearch" id="fileSearch1" >SEARCH</label>
                        <input type="file" id="input-file1" name="input-file[1]" class="upload-hidden">
                        </div> -->
                        
                        </div>
                        
						<div class="fileAdd">
							<a id="addbt">Add</a>
						</div>
                        <ol class="pop_master_btn02">
                            <li>
                                <a href="" class="pop_master_btn_submit" onclick="writeAcSubmit();">SUBMIT</a>
                            </li>
                             <li class="margin_none">
                                <a onclick="Close02();" class="pop_master_btn_cancle">CANCLE</a>
                            </li>
                        </ol>