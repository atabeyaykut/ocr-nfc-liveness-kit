.class public abstract Lyb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma/h0;


# instance fields
.field public final a:Lbc/l;

.field public final b:Lyb/x;

.field public final c:Lma/b0;

.field public d:Lyb/l;

.field public final e:Lbc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/h<",
            "Llb/c;",
            "Lma/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbc/c;Lra/f;Lpa/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyb/b;->a:Lbc/l;

    iput-object p2, p0, Lyb/b;->b:Lyb/x;

    iput-object p3, p0, Lyb/b;->c:Lma/b0;

    new-instance p2, Lyb/a;

    invoke-direct {p2, p0}, Lyb/a;-><init>(Lyb/b;)V

    invoke-virtual {p1, p2}, Lbc/c;->e(Lx9/l;)Lbc/c$j;

    move-result-object p1

    iput-object p1, p0, Lyb/b;->e:Lbc/h;

    return-void
.end method


# virtual methods
.method public final a(Llb/c;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/c;",
            ")",
            "Ljava/util/List<",
            "Lma/e0;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyb/b;->e:Lbc/h;

    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lb8/f;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Llb/c;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyb/b;->e:Lbc/h;

    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/d0;->f(Ljava/lang/Object;Ljava/util/AbstractCollection;)V

    return-void
.end method

.method public final c(Llb/c;)Z
    .locals 5

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lyb/b;->e:Lbc/h;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lbc/c$j;

    .line 10
    .line 11
    iget-object v1, v1, Lbc/c$j;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 12
    .line 13
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget-object v4, Lbc/c$l;->b:Lbc/c$l;

    .line 22
    .line 23
    if-eq v1, v4, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lma/e0;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v0, p0

    .line 38
    check-cast v0, Lla/t;

    .line 39
    .line 40
    iget-object v1, v0, Lyb/b;->b:Lyb/x;

    .line 41
    .line 42
    invoke-interface {v1, p1}, Lyb/x;->c(Llb/c;)Ljava/io/InputStream;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v4, v0, Lyb/b;->c:Lma/b0;

    .line 49
    .line 50
    iget-object v0, v0, Lyb/b;->a:Lbc/l;

    .line 51
    .line 52
    invoke-static {p1, v0, v4, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a$a;->a(Llb/c;Lbc/l;Lma/b0;Ljava/io/InputStream;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 p1, 0x0

    .line 58
    :goto_1
    if-nez p1, :cond_3

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    :cond_3
    return v2
.end method

.method public final n(Llb/c;Lx9/l;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/c;",
            "Lx9/l<",
            "-",
            "Llb/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Llb/c;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lm9/x;->a:Lm9/x;

    return-object p1
.end method
