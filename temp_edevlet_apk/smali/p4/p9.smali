.class public final Lp4/p9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp4/u9;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp4/o9;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp4/p9;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lp4/o9;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lp4/ba;

    invoke-direct {v1, p1, p2}, Lp4/ba;-><init>(Landroid/content/Context;Lp4/o9;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lp4/y9;)V
    .locals 2

    iget-object v0, p0, Lp4/p9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/u9;

    invoke-interface {v1, p1}, Lp4/u9;->a(Lp4/y9;)V

    goto :goto_0

    :cond_0
    return-void
.end method
