def nyc_pigeon_organizer(data)
  #tries to add data at deepest level, then scopes out if item doesn't exist at that level
  pigeon_list= Hash.new
  data.each do |trait, options|
    options.each do |option, birds|
      birds.each do |bird|
        if pigeon_list.include?(bird)
          if pigeon_list[bird].include?(trait)
            pigeon_list[bird][trait] << option.to_s
          else
            pigeon_list[bird][trait] = [option.to_s]
          end
        else
          pigeon_list[bird] = {trait => [option.to_s]}
        end
      end
    end
  end
  pigeon_list
end
