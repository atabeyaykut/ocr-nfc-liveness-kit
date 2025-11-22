.class public final Lac/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lac/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Lbc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/h<",
            "Llb/f;",
            "Lma/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Ljava/util/Set<",
            "Llb/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lac/d;


# direct methods
.method public constructor <init>(Lac/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lac/d$c;->d:Lac/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lac/d;->e:Lgb/b;

    .line 7
    .line 8
    iget-object v0, v0, Lgb/b;->w:Ljava/util/List;

    .line 9
    .line 10
    const-string v1, "classProto.enumEntryList"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast v0, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Lb8/f;->V(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v2, 0x10

    .line 26
    .line 27
    if-ge v1, v2, :cond_0

    .line 28
    .line 29
    const/16 v1, 0x10

    .line 30
    .line 31
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v3, v1

    .line 51
    check-cast v3, Lgb/f;

    .line 52
    .line 53
    iget-object v4, p1, Lac/d;->m:Lyb/n;

    .line 54
    .line 55
    iget-object v4, v4, Lyb/n;->b:Lib/c;

    .line 56
    .line 57
    iget v3, v3, Lgb/f;->d:I

    .line 58
    .line 59
    invoke-static {v4, v3}, La6/a;->o(Lib/c;I)Llb/f;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iput-object v2, p0, Lac/d$c;->a:Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    iget-object p1, p0, Lac/d$c;->d:Lac/d;

    .line 70
    .line 71
    iget-object v0, p1, Lac/d;->m:Lyb/n;

    .line 72
    .line 73
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 74
    .line 75
    iget-object v0, v0, Lyb/l;->a:Lbc/l;

    .line 76
    .line 77
    new-instance v1, Lac/d$c$a;

    .line 78
    .line 79
    invoke-direct {v1, p0, p1}, Lac/d$c$a;-><init>(Lac/d$c;Lac/d;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1}, Lbc/l;->e(Lx9/l;)Lbc/c$j;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lac/d$c;->b:Lbc/h;

    .line 87
    .line 88
    iget-object p1, p0, Lac/d$c;->d:Lac/d;

    .line 89
    .line 90
    iget-object p1, p1, Lac/d;->m:Lyb/n;

    .line 91
    .line 92
    iget-object p1, p1, Lyb/n;->a:Lyb/l;

    .line 93
    .line 94
    iget-object p1, p1, Lyb/l;->a:Lbc/l;

    .line 95
    .line 96
    new-instance v0, Lac/d$c$b;

    .line 97
    .line 98
    invoke-direct {v0, p0}, Lac/d$c$b;-><init>(Lac/d$c;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v0}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, p0, Lac/d$c;->c:Lbc/i;

    .line 106
    .line 107
    return-void
.end method
