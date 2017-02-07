import grpc from 'grpc';
import config from './config';

var client=require('grpc-node-simple-client')(grpc, config('grpc', true), grpc.credentials.createInsecure());
export default client;
