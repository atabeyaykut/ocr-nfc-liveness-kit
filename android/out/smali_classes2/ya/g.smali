.class public final Lya/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya/j;


# instance fields
.field public final a:Lp4/g7;

.field public final b:Lma/j;

.field public final c:I

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Lbc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/h<",
            "Lcb/x;",
            "Lza/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp4/g7;Lma/j;Lcb/y;I)V
    .locals 1

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "containingDeclaration"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "typeParameterOwner"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lya/g;->a:Lp4/g7;

    .line 20
    .line 21
    iput-object p2, p0, Lya/g;->b:Lma/j;

    .line 22
    .line 23
    iput p4, p0, Lya/g;->c:I

    .line 24
    .line 25
    invoke-interface {p3}, Lcb/y;->getTypeParameters()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "<this>"

    .line 30
    .line 31
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 p3, 0x0

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    if-eqz p4, :cond_0

    .line 49
    .line 50
    add-int/lit8 p4, p3, 0x1

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move p3, p4

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iput-object p2, p0, Lya/g;->d:Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    iget-object p1, p0, Lya/g;->a:Lp4/g7;

    .line 68
    .line 69
    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance p2, Lya/g$a;

    .line 74
    .line 75
    invoke-direct {p2, p0}, Lya/g$a;-><init>(Lya/g;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, p2}, Lbc/l;->e(Lx9/l;)Lbc/c$j;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lya/g;->e:Lbc/h;

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final a(Lcb/x;)Lma/w0;
    .locals 1

    .line 1
    const-string v0, "javaTypeParameter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lya/g;->e:Lbc/h;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lza/z;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lya/g;->a:Lp4/g7;

    .line 18
    .line 19
    iget-object v0, v0, Lp4/g7;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lya/j;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lya/j;->a(Lcb/x;)Lma/w0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    return-object v0
.end method
