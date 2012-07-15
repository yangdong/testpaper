class PaperController < ApplicationController
  def download
    @pdf_kit_new = PDFKit.new('asdfasdf')
    @pdf_kit_new.to_file 'tmp/paper.pdf'
    send_file 'tmp/paper.pdf', :type=>"application/pdf"
  end
end
