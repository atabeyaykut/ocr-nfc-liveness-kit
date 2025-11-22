.class public final Lyb/g0$a;
.super Lyb/g0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final d:Lgb/b;

.field public final e:Lyb/g0$a;

.field public final f:Llb/b;

.field public final g:Lgb/b$c;

.field public final h:Z


# direct methods
.method public constructor <init>(Lgb/b;Lib/c;Lib/g;Lma/r0;Lyb/g0$a;)V
    .locals 1

    .line 1
    const-string v0, "classProto"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "typeTable"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p2, p3, p4}, Lyb/g0;-><init>(Lib/c;Lib/g;Lma/r0;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lyb/g0$a;->d:Lgb/b;

    .line 20
    .line 21
    iput-object p5, p0, Lyb/g0$a;->e:Lyb/g0$a;

    .line 22
    .line 23
    iget p3, p1, Lgb/b;->e:I

    .line 24
    .line 25
    invoke-static {p2, p3}, La6/a;->n(Lib/c;I)Llb/b;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lyb/g0$a;->f:Llb/b;

    .line 30
    .line 31
    sget-object p2, Lib/b;->f:Lib/b$b;

    .line 32
    .line 33
    iget p3, p1, Lgb/b;->d:I

    .line 34
    .line 35
    invoke-virtual {p2, p3}, Lib/b$b;->c(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Lgb/b$c;

    .line 40
    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    sget-object p2, Lgb/b$c;->b:Lgb/b$c;

    .line 44
    .line 45
    :cond_0
    iput-object p2, p0, Lyb/g0$a;->g:Lgb/b$c;

    .line 46
    .line 47
    sget-object p2, Lib/b;->g:Lib/b$a;

    .line 48
    .line 49
    iget p1, p1, Lgb/b;->d:I

    .line 50
    .line 51
    const-string p3, "IS_INNER.get(classProto.flags)"

    .line 52
    .line 53
    invoke-static {p2, p1, p3}, Landroidx/room/util/a;->i(Lib/b$a;ILjava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput-boolean p1, p0, Lyb/g0$a;->h:Z

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a()Llb/c;
    .locals 2

    iget-object v0, p0, Lyb/g0$a;->f:Llb/b;

    invoke-virtual {v0}, Llb/b;->b()Llb/c;

    move-result-object v0

    const-string v1, "classId.asSingleFqName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
