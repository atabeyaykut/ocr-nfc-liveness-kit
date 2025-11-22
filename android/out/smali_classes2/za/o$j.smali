.class public final Lza/o$j;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/o;-><init>(Lp4/g7;Lza/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Llb/f;",
        "Ljava/util/List<",
        "+",
        "Lma/l0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/o;


# direct methods
.method public constructor <init>(Lza/o;)V
    .locals 0

    iput-object p1, p0, Lza/o$j;->a:Lza/o;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Llb/f;

    .line 2
    .line 3
    const-string v0, "name"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lza/o$j;->a:Lza/o;

    .line 14
    .line 15
    iget-object v2, v1, Lza/o;->g:Lbc/h;

    .line 16
    .line 17
    invoke-interface {v2, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/clearcut/d0;->f(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0, p1}, Lza/o;->n(Ljava/util/ArrayList;Llb/f;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lza/o;->q()Lma/j;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v2, 0x5

    .line 32
    invoke-static {p1, v2}, Lob/i;->n(Lma/j;I)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-static {v0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, v1, Lza/o;->b:Lp4/g7;

    .line 44
    .line 45
    iget-object v1, p1, Lp4/g7;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lya/c;

    .line 48
    .line 49
    iget-object v1, v1, Lya/c;->r:Ldb/t;

    .line 50
    .line 51
    invoke-virtual {v1, p1, v0}, Ldb/t;->c(Lp4/g7;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_0
    return-object p1
.end method
