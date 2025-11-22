.class public final Lpa/z$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/z;-><init>(Lpa/g0;Llb/c;Lbc/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lvb/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpa/z;


# direct methods
.method public constructor <init>(Lpa/z;)V
    .locals 0

    iput-object p1, p0, Lpa/z$c;->a:Lpa/z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lpa/z$c;->a:Lpa/z;

    invoke-virtual {v0}, Lpa/z;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lvb/i$b;->b:Lvb/i$b;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lpa/z;->D()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lma/e0;

    invoke-interface {v3}, Lma/e0;->o()Lvb/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Lpa/q0;

    iget-object v3, v0, Lpa/z;->c:Lpa/g0;

    iget-object v0, v0, Lpa/z;->d:Llb/c;

    invoke-direct {v1, v3, v0}, Lpa/q0;-><init>(Lpa/g0;Llb/c;)V

    invoke-static {v1, v2}, Lm9/t;->n1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "package view scope for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lpa/p;->getName()Llb/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lvb/b$a;->a(Ljava/lang/String;Ljava/lang/Iterable;)Lvb/i;

    move-result-object v0

    :goto_1
    return-object v0
.end method
