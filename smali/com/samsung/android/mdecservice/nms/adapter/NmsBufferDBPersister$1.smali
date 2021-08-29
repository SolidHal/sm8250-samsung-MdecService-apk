.class Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$1;
.super Landroid/content/BroadcastReceiver;
.source "NmsBufferDBPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$1;->this$0:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "got soft_reset, drop all DB"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$1;->this$0:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$100(Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;)Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$1;->this$0:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$100(Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;)Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->access$200(Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
