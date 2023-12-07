import { DataSource } from "typeorm";
import "dotenv/config";
import "reflect-metadata";

export const AppDataSource = new DataSource({
  type: "sqlite",
  database: ":memory:",
  entities: ["src/entities/*.ts"],
  synchronize: true,
});
