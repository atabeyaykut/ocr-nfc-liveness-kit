.class public final Lcom/bumptech/glide/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/manager/r;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "RequestManager.this"
    .end annotation
.end field

.field public final synthetic b:Lcom/bumptech/glide/o;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/o;Lcom/bumptech/glide/manager/r;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/o$b;->b:Lcom/bumptech/glide/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/o$b;->a:Lcom/bumptech/glide/manager/r;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/o$b;->b:Lcom/bumptech/glide/o;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/o$b;->a:Lcom/bumptech/glide/manager/r;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/r;->b()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
