.class public final Lab/g$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lab/g;->g(Lcc/m0;Lma/e;Lab/a;)Ll9/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ldc/f;",
        "Lcc/m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lma/e;


# direct methods
.method public constructor <init>(Lma/e;Lab/a;Lab/g;Lcc/m0;)V
    .locals 0

    iput-object p1, p0, Lab/g$a;->a:Lma/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ldc/f;

    .line 2
    .line 3
    const-string v0, "kotlinTypeRefiner"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lab/g$a;->a:Lma/e;

    .line 9
    .line 10
    instance-of v1, v0, Lma/e;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v2

    .line 17
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-static {v0}, Lsb/b;->f(Lma/g;)Llb/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p1, v0}, Ldc/f;->t(Llb/b;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_1
    return-object v2
.end method
