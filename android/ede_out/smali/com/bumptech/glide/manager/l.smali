.class public final Lcom/bumptech/glide/manager/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/k;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/Lifecycle;

.field public final synthetic b:Lcom/bumptech/glide/manager/m;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/m;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/manager/l;->b:Lcom/bumptech/glide/manager/m;

    iput-object p2, p0, Lcom/bumptech/glide/manager/l;->a:Landroidx/lifecycle/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->b:Lcom/bumptech/glide/manager/m;

    iget-object v0, v0, Lcom/bumptech/glide/manager/m;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/bumptech/glide/manager/l;->a:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method
