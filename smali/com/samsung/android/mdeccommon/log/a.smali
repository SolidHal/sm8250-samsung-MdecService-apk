.class public final synthetic Lcom/samsung/android/mdeccommon/log/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/samsung/android/mdeccommon/log/TimeLog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mdeccommon/log/TimeLog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdeccommon/log/a;->b:Lcom/samsung/android/mdeccommon/log/TimeLog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/a;->b:Lcom/samsung/android/mdeccommon/log/TimeLog;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/log/TimeLog;->a(Lcom/samsung/android/mdeccommon/log/TimeLog;)V

    return-void
.end method
