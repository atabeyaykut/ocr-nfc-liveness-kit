.class public final Lyb/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyb/l;

.field public final b:Lib/c;

.field public final c:Lma/j;

.field public final d:Lib/g;

.field public final e:Lib/h;

.field public final f:Lib/a;

.field public final g:Lac/g;

.field public final h:Lyb/k0;

.field public final i:Lyb/z;


# direct methods
.method public constructor <init>(Lyb/l;Lib/c;Lma/j;Lib/g;Lib/h;Lib/a;Lac/g;Lyb/k0;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/l;",
            "Lib/c;",
            "Lma/j;",
            "Lib/g;",
            "Lib/h;",
            "Lib/a;",
            "Lac/g;",
            "Lyb/k0;",
            "Ljava/util/List<",
            "Lgb/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyb/n;->a:Lyb/l;

    iput-object p2, p0, Lyb/n;->b:Lib/c;

    iput-object p3, p0, Lyb/n;->c:Lma/j;

    iput-object p4, p0, Lyb/n;->d:Lib/g;

    iput-object p5, p0, Lyb/n;->e:Lib/h;

    iput-object p6, p0, Lyb/n;->f:Lib/a;

    iput-object p7, p0, Lyb/n;->g:Lac/g;

    new-instance v0, Lyb/k0;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Deserializer for \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lma/j;->getName()Llb/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    if-eqz p7, :cond_0

    invoke-interface {p7}, Lac/g;->c()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "[container not found]"

    :cond_1
    move-object p6, p1

    move-object p1, v0

    move-object p2, p0

    move-object p3, p8

    move-object p4, p9

    invoke-direct/range {p1 .. p6}, Lyb/k0;-><init>(Lyb/n;Lyb/k0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lyb/n;->h:Lyb/k0;

    new-instance p1, Lyb/z;

    invoke-direct {p1, p0}, Lyb/z;-><init>(Lyb/n;)V

    iput-object p1, p0, Lyb/n;->i:Lyb/z;

    return-void
.end method

.method public static synthetic b(Lyb/n;Lpa/q;Ljava/util/List;)Lyb/n;
    .locals 7

    iget-object v3, p0, Lyb/n;->b:Lib/c;

    iget-object v4, p0, Lyb/n;->d:Lib/g;

    iget-object v5, p0, Lyb/n;->e:Lib/h;

    iget-object v6, p0, Lyb/n;->f:Lib/a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lyb/n;->a(Lma/j;Ljava/util/List;Lib/c;Lib/g;Lib/h;Lib/a;)Lyb/n;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lma/j;Ljava/util/List;Lib/c;Lib/g;Lib/h;Lib/a;)Lyb/n;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/j;",
            "Ljava/util/List<",
            "Lgb/r;",
            ">;",
            "Lib/c;",
            "Lib/g;",
            "Lib/h;",
            "Lib/a;",
            ")",
            "Lyb/n;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p6

    .line 3
    .line 4
    const-string v1, "descriptor"

    .line 5
    .line 6
    move-object v4, p1

    .line 7
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "nameResolver"

    .line 11
    .line 12
    move-object v3, p3

    .line 13
    invoke-static {p3, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "typeTable"

    .line 17
    .line 18
    move-object/from16 v5, p4

    .line 19
    .line 20
    invoke-static {v5, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "versionRequirementTable"

    .line 24
    .line 25
    move-object/from16 v2, p5

    .line 26
    .line 27
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "metadataVersion"

    .line 31
    .line 32
    invoke-static {v7, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v11, Lyb/n;

    .line 36
    .line 37
    iget-object v6, v0, Lyb/n;->a:Lyb/l;

    .line 38
    .line 39
    iget v1, v7, Lib/a;->b:I

    .line 40
    .line 41
    const/4 v8, 0x1

    .line 42
    if-ne v1, v8, :cond_0

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    iget v9, v7, Lib/a;->c:I

    .line 46
    .line 47
    if-lt v9, v1, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v8, 0x0

    .line 51
    :goto_0
    if-eqz v8, :cond_1

    .line 52
    .line 53
    move-object v8, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v1, v0, Lyb/n;->e:Lib/h;

    .line 56
    .line 57
    move-object v8, v1

    .line 58
    :goto_1
    iget-object v9, v0, Lyb/n;->g:Lac/g;

    .line 59
    .line 60
    iget-object v10, v0, Lyb/n;->h:Lyb/k0;

    .line 61
    .line 62
    move-object v1, v11

    .line 63
    move-object v2, v6

    .line 64
    move-object v3, p3

    .line 65
    move-object v4, p1

    .line 66
    move-object/from16 v5, p4

    .line 67
    .line 68
    move-object v6, v8

    .line 69
    move-object/from16 v7, p6

    .line 70
    .line 71
    move-object v8, v9

    .line 72
    move-object v9, v10

    .line 73
    move-object v10, p2

    .line 74
    invoke-direct/range {v1 .. v10}, Lyb/n;-><init>(Lyb/l;Lib/c;Lma/j;Lib/g;Lib/h;Lib/a;Lac/g;Lyb/k0;Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    return-object v11
.end method
