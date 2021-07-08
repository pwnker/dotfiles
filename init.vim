# Remove the need to press the prefix again to switch pane                                                     
bind -n M-Left select-pane -L                                                                                                                                
bind -n M-Right select-pane -R                                                                       
bind -n M-Up select-pane -U                                                                                              
bind -n M-Down select-pane -D                                                                        
                                                                                                               
# reload with 'r'                                                                                                                           
bind-key r source-file ~/.tmux.conf \; display-message "~/.tmux.conf reloaded"                                             
                                                                                                                                                             
bind-key k set -g mouse on\; display-message "mouse mode on"                                                             
bind-key l set -g mouse off\; display-message "mouse mode off"                                                                              
                                                                                                                                            
# remap prefix from 'C-b' to 'C-a'                                                                                                          
unbind C-b                                                                                                                                                   
set-option -g prefix C-a                                                                                                                                     
bind-key C-a send-prefix                                                                                                                                                        
                                                                                                                                                                                
# remap spliting panes to | and -                                                                                                                                                                     
bind | split-window -h -c "#{pane_current_path}"                                                                                                                                                      
bind - split-window -v -c "#{pane_current_path}"                                                                                                                                                      
unbind '"'                                                                                                                                                                                                                
unbind %                                                                                                                                                                                                                  
                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                 
# styling                                                                                                                                                                                                                                                          
set -g default-terminal "screen-256color"                                                                                     
set -g pane-border-style fg='#003e8a'                                                                                                                                                                                                                              
set -g pane-active-border-style fg='#003e8a'                                                                                     
                                                                                                                                                                                                                                                                   
set -g message-style bg='Black',fg='#f8f8f2'                                                                                     
                                                                                                                                 
set -g status-style bg='Black',fg='#003e8a'                                                                                                                                                                                                                        
set -g status-interval 1                                                                                                         
                                                                                                                                                                                                                                                                   
set -g status-left '#[bg=Black]#[fg=#f8f8f2]#{?client_prefix,#[bg=#003e8a]#[fg=#f8f8f2],} ツ '                                   
                                                                                                                                                                                                                                                                   
set -ga status-left '#[bg=Black]#[fg=#00d7d7] #{?window_zoomed_flag, ↕  ,   }'                                                                                                                                                                                     
                                                                                                                                                                                                                                                                   
set-window-option -g window-status-style fg='#0087af',bg=default                                                                                                                                                                                                   
set-window-option -g window-status-current-style fg='#00d7d7',bg='#00d7d7'                                                                                                                                                                                         
                                                                                                                                                                                                                                                                   
set -g window-status-current-format "#[fg=Black]#[bg=#003e8a]#[fg=#f8f8f2]#[bg=#003e8a] #I #W #[fg=#003e8a]#[bg=Black]"        
set -g window-status-format "#[fg=#f8f8f2]#[bg=Black]#I #W #[fg=Black] "                                                                                                                                                                                          
                                                                                                                                                                                                                                                                   
set -g status-right-length 80                                                                                                                                                                                                                                      
set -g status-right '#[fg=#003e8a,bg=Black]#[fg=#f8f8f2,bg=#003e8a] #(ip a show | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b") '                                                                                                                                   
set -ga status-right '#[fg=Black,bg=#003e8a]#[fg=#f8f8f2,bg=Black] #(uptime | cut -f 4-5 -d " " | cut -f 1 -d ",") '            
set -ga status-right '#[fg=#003e8a,bg=Black]#[fg=#f8f8f2,bg=#003e8a] %a %H:%M:%S #[fg=#f8f8f2]%d/%m/%Y '                   
