namespace :dockera do
  desc "도커 이미지 빌드"
  task :build do
    DockerAlias.build
  end

  desc "도커 이미지 업로드"
  task :push do
    DockerAlias.push
  end

  namespace :con do
    desc "도커 컨테이너 실행"
    task :start do
      DockerAlias::Container.start
    end
    task :start_exec do
      DockerAlias::Container.start_exec
    end

    desc "도커 컨테이너 중지"
    task :stop do
      DockerAlias::Container.stop
    end
    task :stop_exec do
      DockerAlias::Container.stop_exec
    end

    desc "도커 컨테이너 삭제"
    task :rm do
      DockerAlias::Container.rm
    end
    task :rm_exec do
      DockerAlias::Container.rm_exec
    end

    desc "도커 컨테이너 bash 실행"
    task :bash do
      DockerAlias::Container.bash
    end
    task :bash_exec do
      DockerAlias::Container.bash_exec
    end
  end

  namespace :db do
    desc "도커 DB 생성"
    task :create do
      DockerAlias::Db.create
    end
    task :create_exec do
      DockerAlias::Db.create_exec
    end

    desc "도커 DB 초기 설정. 마이그레이션 및 시드 데이터 추가"
    task :setup do
      DockerAlias::Db.setup
    end
    task :setup_exec do
      DockerAlias::Db.setup_exec
    end

    desc "도커 DB 재설정. DB drop 및 setup"
    task :reset do
      DockerAlias::Db.reset
    end
    task :reset_exec do
      DockerAlias::Db.reset_exec
    end

    desc "도커 DB 마이그레이트"
    task :migrate do
      DockerAlias::Db.migrate
    end
    task :migrate_exec do
      DockerAlias::Db.migrate_exec
    end

    namespace :schema do
      desc "도커 DB 스키마 로드"
      task :load do
        DockerAlias::Db.schema_load
      end
      task :load_exec do
        DockerAlias::Db.schema_load_exec
      end
    end
  end
end
