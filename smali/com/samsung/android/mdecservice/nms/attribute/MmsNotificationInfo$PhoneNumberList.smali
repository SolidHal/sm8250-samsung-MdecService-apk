.class public Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$PhoneNumberList;
.super Ljava/lang/Object;
.source "MmsNotificationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneNumberList"
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "Action"

.field private static final NUMBER:Ljava/lang/String; = "Number"

.field private static final NUMBER_TYPE:Ljava/lang/String; = "Type"


# instance fields
.field mAction:Ljava/lang/String;

.field mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$PhoneNumberList;->this$0:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "Number"

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$PhoneNumberList;->mType:Ljava/lang/String;

    const-string p1, "PhoneNumberList"

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$PhoneNumberList;->mAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$PhoneNumberList;->mAction:Ljava/lang/String;

    const-string v2, "Action"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$PhoneNumberList;->this$0:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->access$000(Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Number"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$PhoneNumberList;->mType:Ljava/lang/String;

    const-string v2, "Type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
