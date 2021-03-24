class SelectImage
  def image 
    a = []
    for i in 1..18 do
      a.push('free_image/' + i.to_s + '.jpg')
    end
    for i in 1..2 do
      a.push('free_image/p' + i.to_s + '.png')
    end
    return a
  end
end