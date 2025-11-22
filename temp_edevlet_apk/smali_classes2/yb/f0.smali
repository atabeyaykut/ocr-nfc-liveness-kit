.class public final Lyb/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb/i;


# instance fields
.field public final a:Lib/c;

.field public final b:Lib/a;

.field public final c:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "Llb/b;",
            "Lma/r0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lgb/l;Lib/d;Lib/a;Lyb/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lyb/f0;->a:Lib/c;

    .line 5
    .line 6
    iput-object p3, p0, Lyb/f0;->b:Lib/a;

    .line 7
    .line 8
    iput-object p4, p0, Lyb/f0;->c:Lx9/l;

    .line 9
    .line 10
    iget-object p1, p1, Lgb/l;->g:Ljava/util/List;

    .line 11
    .line 12
    const-string p2, "proto.class_List"

    .line 13
    .line 14
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast p1, Ljava/lang/Iterable;

    .line 18
    .line 19
    invoke-static {p1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-static {p2}, Lb8/f;->V(I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const/16 p3, 0x10

    .line 28
    .line 29
    if-ge p2, p3, :cond_0

    .line 30
    .line 31
    const/16 p2, 0x10

    .line 32
    .line 33
    :cond_0
    new-instance p3, Ljava/util/LinkedHashMap;

    .line 34
    .line 35
    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    move-object p4, p2

    .line 53
    check-cast p4, Lgb/b;

    .line 54
    .line 55
    iget-object v0, p0, Lyb/f0;->a:Lib/c;

    .line 56
    .line 57
    iget p4, p4, Lgb/b;->e:I

    .line 58
    .line 59
    invoke-static {v0, p4}, La6/a;->n(Lib/c;I)Llb/b;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iput-object p3, p0, Lyb/f0;->d:Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final a(Llb/b;)Lyb/h;
    .locals 4

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyb/f0;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgb/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Lyb/h;

    iget-object v2, p0, Lyb/f0;->c:Lx9/l;

    invoke-interface {v2, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lma/r0;

    iget-object v2, p0, Lyb/f0;->a:Lib/c;

    iget-object v3, p0, Lyb/f0;->b:Lib/a;

    invoke-direct {v1, v2, v0, v3, p1}, Lyb/h;-><init>(Lib/c;Lgb/b;Lib/a;Lma/r0;)V

    return-object v1
.end method
