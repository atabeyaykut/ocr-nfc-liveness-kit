.class public final Lcom/bumptech/glide/manager/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/manager/k;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/bumptech/glide/manager/k;->onStart()V

    return-void
.end method

.method public final b(Lcom/bumptech/glide/manager/k;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
