.class public final Lcom/bumptech/glide/manager/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/bumptech/glide/manager/s$e;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/s$e;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/manager/v;->b:Lcom/bumptech/glide/manager/s$e;

    iput-boolean p2, p0, Lcom/bumptech/glide/manager/v;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/v;->b:Lcom/bumptech/glide/manager/s$e;

    iget-object v0, v0, Lcom/bumptech/glide/manager/s$e;->b:Lcom/bumptech/glide/manager/c$a;

    iget-boolean v1, p0, Lcom/bumptech/glide/manager/v;->a:Z

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/c$a;->a(Z)V

    return-void
.end method
