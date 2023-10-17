class SubjectsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    def new
        @subjects = Subject.new
      end
    
      def create
        subject = Subject.new(subject_params)
        if subject.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def index
       

        if params[:search] == nil
          @subjects= Subject.all
        elsif params[:search] == ''
          @subjects= Subject.all
        else
          #部分検索
          @subjects = Subject.where("name2 LIKE ? ",'%' + params[:search] + '%')
        end
        
    end
    
    def show
        @subjects = Subject.find(params[:id])

        @comments = @subjects.comments
        @comment = Comment.new
  
      end
    
      def edit
        @subjects = Subject.find(params[:id])
      end

      def update
        subject = Subject.find(params[:id])
        if subject.update(subject_params)
          redirect_to :action => "show", :id => subject.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        subject = Subject.find(params[:id])
        subject.destroy
        redirect_to action: :index
      end

      def japanese
        @subjects = Subject.all
      end
    
      def math
        @subjects = Subject.all
      end
    
      def english
        @subjects = Subject.all
      end

      
      
      private
      def subject_params
        params.require(:subject).permit(:name, :contents, :grade, :name2, :image, :user_id, :level)
      end



end
