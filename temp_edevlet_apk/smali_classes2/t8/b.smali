.class public abstract Lt8/b;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lt8/d;


# instance fields
.field public volatile a:Lt8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt8/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lzf/d1;
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lt8/b;->a:Lt8/c;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt8/b;->a:Lt8/c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lt8/b;->a()Lzf/d1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lzf/d1;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lt8/b;->a:Lt8/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The AndroidInjector returned from applicationInjector() did not inject the DaggerApplication"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public final c()Lt8/c;
    .locals 1

    invoke-virtual {p0}, Lt8/b;->b()V

    iget-object v0, p0, Lt8/b;->a:Lt8/c;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lt8/b;->b()V

    return-void
.end method
