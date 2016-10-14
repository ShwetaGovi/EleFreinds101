# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160828115012) do

  create_table "advances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.float    "Amount",         limit: 24
    t.datetime "AdvDate"
    t.boolean  "ApprovalStatus"
    t.integer  "employee_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "advance_desc"
    t.boolean  "advance_status"
  end

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_forms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "strEmpName"
    t.datetime "dtEmpAppDOJ"
    t.string   "strEmpMobile"
    t.string   "strEmpDoorNo"
    t.string   "strEmpStreetName"
    t.string   "strEmpArea"
    t.string   "strEmpCity"
    t.string   "strEmpPincode"
    t.string   "strEmpEmailid"
    t.string   "strEmpPassword"
    t.boolean  "btEmpVerificationStatus"
    t.datetime "dtEmpLastVerificationDate"
    t.integer  "employer_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "auth_token"
    t.integer  "payslip_id"
    t.integer  "advance_id"
    t.string   "strEmpBusinessName"
    t.string   "img_path"
    t.index ["strEmpMobile"], name: "index_employees_on_strEmpMobile", unique: true, using: :btree
  end

  create_table "employers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "strEmrName"
    t.datetime "dtEmrAppDOJ"
    t.string   "strEmrBusinessName"
    t.string   "strEmrMobile"
    t.string   "strEmrDoorNo"
    t.string   "strEmrStreetName"
    t.string   "strEmrArea"
    t.string   "strEmrCity"
    t.string   "strEmrPincode"
    t.string   "strEmrEmailid"
    t.string   "strEmrPassword"
    t.boolean  "btEmrVerificationStatus"
    t.datetime "dtEmrLastVerificationDate"
    t.integer  "employee_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "auth_token"
  end

  create_table "payslips", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.float    "BasicPay",         limit: 24
    t.float    "MedicalAllowance", limit: 24
    t.float    "OverTimePay",      limit: 24
    t.float    "Conveyance",       limit: 24
    t.float    "ProvidentFund",    limit: 24
    t.float    "Tax",              limit: 24
    t.float    "AdvanceDeducted",  limit: 24
    t.string   "employee_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.datetime "Payslip_Date"
    t.float    "insurance",        limit: 24
    t.boolean  "payslip_status"
  end

  create_table "sessions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "session_id",               null: false
    t.text     "data",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
    t.index ["updated_at"], name: "index_sessions_on_updated_at", using: :btree
  end

end
