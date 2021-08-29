.class public final synthetic Lcom/samsung/android/cmcsettings/utils/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/utils/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcsettings/utils/ScreenConfigUtil;->b(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Object;)V

    return-void
.end method
