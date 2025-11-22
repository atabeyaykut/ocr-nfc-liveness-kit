.class public final Ls4/t8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls4/w8;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls4/s8;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls4/t8;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ls4/s8;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ls4/c9;

    invoke-direct {v1, p1, p2}, Ls4/c9;-><init>(Landroid/content/Context;Ls4/s8;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ls4/a9;)V
    .locals 2

    iget-object v0, p0, Ls4/t8;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls4/w8;

    invoke-interface {v1, p1}, Ls4/w8;->a(Ls4/a9;)V

    goto :goto_0

    :cond_0
    return-void
.end method
