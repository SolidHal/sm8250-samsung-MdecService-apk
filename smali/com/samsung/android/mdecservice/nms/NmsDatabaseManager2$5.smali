.class Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$5;
.super Ljava/lang/Object;
.source "NmsDatabaseManager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleCompletedPushEventFromApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

.field final synthetic val$dataType:Ljava/lang/String;

.field final synthetic val$failBundle:Ljava/util/ArrayList;

.field final synthetic val$requestType:Ljava/lang/String;

.field final synthetic val$transactionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$5;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$5;->val$dataType:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$5;->val$requestType:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$5;->val$failBundle:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$5;->val$transactionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$5;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$5;->val$dataType:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$5;->val$requestType:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$5;->val$failBundle:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$5;->val$transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleFailPushEventFromApp(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
