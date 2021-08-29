.class Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$2;
.super Ljava/lang/Object;
.source "NmsDatabaseManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->startContactSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->checkContactChange()V

    return-void
.end method
