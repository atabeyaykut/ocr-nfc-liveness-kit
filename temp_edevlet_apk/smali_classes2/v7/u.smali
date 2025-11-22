.class public final synthetic Lv7/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Lh5/q;

.field public final synthetic c:Lh5/a;

.field public final synthetic d:Lh5/l;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lh5/q;Lh5/a;Lh5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv7/u;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lv7/u;->b:Lh5/q;

    iput-object p3, p0, Lv7/u;->c:Lh5/a;

    iput-object p4, p0, Lv7/u;->d:Lh5/l;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lv7/u;->a:Ljava/util/concurrent/Executor;

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lv7/u;->b:Lh5/q;

    invoke-virtual {v0}, Lh5/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv7/u;->c:Lh5/a;

    invoke-virtual {v0}, Lh5/a;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv7/u;->d:Lh5/l;

    invoke-virtual {v0, p1}, Lh5/l;->a(Ljava/lang/Exception;)V

    :goto_0
    throw p1
.end method
