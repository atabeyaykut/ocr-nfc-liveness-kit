.class public final Lyb/a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Llb/c;",
        "Lma/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lyb/b;


# direct methods
.method public constructor <init>(Lyb/b;)V
    .locals 0

    iput-object p1, p0, Lyb/a;->a:Lyb/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Llb/c;

    .line 2
    .line 3
    const-string v0, "fqName"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lyb/a;->a:Lyb/b;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Lla/t;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v2, v1, Lyb/b;->b:Lyb/x;

    .line 17
    .line 18
    invoke-interface {v2, p1}, Lyb/x;->c(Llb/c;)Ljava/io/InputStream;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    iget-object v5, v1, Lyb/b;->a:Lbc/l;

    .line 27
    .line 28
    iget-object v1, v1, Lyb/b;->c:Lma/b0;

    .line 29
    .line 30
    invoke-static {p1, v5, v1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a$a;->a(Llb/c;Lbc/l;Lma/b0;Ljava/io/InputStream;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object p1, v3

    .line 36
    :goto_0
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object v0, v0, Lyb/b;->d:Lyb/l;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lyb/t;->K0(Lyb/l;)V

    .line 43
    .line 44
    .line 45
    move-object v3, p1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string p1, "components"

    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v3

    .line 53
    :cond_2
    :goto_1
    return-object v3
.end method
