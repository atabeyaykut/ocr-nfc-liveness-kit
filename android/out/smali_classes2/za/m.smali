.class public final Lza/m;
.super Lpa/i0;
.source "SourceFile"


# static fields
.field public static final synthetic n:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final g:Lcb/t;

.field public final h:Lp4/g7;

.field public final j:Lbc/i;

.field public final k:Lza/c;

.field public final l:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Ljava/util/List<",
            "Llb/c;",
            ">;>;"
        }
    .end annotation
.end field

.field public final m:Lna/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lza/m;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v3

    const-string v4, "binaryClasses"

    const-string v5, "getBinaryClasses$descriptors_jvm()Ljava/util/Map;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/r;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "partToFacade"

    const-string v4, "getPartToFacade()Ljava/util/HashMap;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lza/m;->n:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lp4/g7;Lcb/t;)V
    .locals 2

    .line 1
    const-string v0, "outerContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jPackage"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lp4/g7;->a()Lma/b0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p2}, Lcb/t;->d()Llb/c;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0, v0, v1}, Lpa/i0;-><init>(Lma/b0;Llb/c;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lza/m;->g:Lcb/t;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v1, 0x6

    .line 26
    invoke-static {p1, p0, v0, v1}, Lya/b;->a(Lp4/g7;Lma/f;Lcb/y;I)Lp4/g7;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lza/m;->h:Lp4/g7;

    .line 31
    .line 32
    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lza/m$a;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lza/m$a;-><init>(Lza/m;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lza/m;->j:Lbc/i;

    .line 46
    .line 47
    new-instance v0, Lza/c;

    .line 48
    .line 49
    invoke-direct {v0, p1, p2, p0}, Lza/c;-><init>(Lp4/g7;Lcb/t;Lza/m;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lza/m;->k:Lza/c;

    .line 53
    .line 54
    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Lza/m$c;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lza/m$c;-><init>(Lza/m;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Lbc/l;->h(Lx9/a;)Lbc/d;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lza/m;->l:Lbc/i;

    .line 68
    .line 69
    iget-object v0, p1, Lp4/g7;->a:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lya/c;

    .line 72
    .line 73
    iget-object v0, v0, Lya/c;->v:Lva/s;

    .line 74
    .line 75
    iget-boolean v0, v0, Lva/s;->c:Z

    .line 76
    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    sget-object p2, Lna/h$a;->a:Lna/h$a$a;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p1, p2}, La6/a;->v(Lp4/g7;Lcb/d;)Lya/e;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    :goto_0
    iput-object p2, p0, Lza/m;->m:Lna/h;

    .line 87
    .line 88
    invoke-virtual {p1}, Lp4/g7;->b()Lbc/l;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance p2, Lza/m$b;

    .line 93
    .line 94
    invoke-direct {p2, p0}, Lza/m$b;-><init>(Lza/m;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, p2}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    .line 98
    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public final getAnnotations()Lna/h;
    .locals 1

    iget-object v0, p0, Lza/m;->m:Lna/h;

    return-object v0
.end method

.method public final getSource()Lma/r0;
    .locals 1

    new-instance v0, Leb/t;

    invoke-direct {v0, p0}, Leb/t;-><init>(Lza/m;)V

    return-object v0
.end method

.method public final o()Lvb/i;
    .locals 1

    iget-object v0, p0, Lza/m;->k:Lza/c;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Lazy Java package fragment: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lpa/i0;->e:Llb/c;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " of module "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lza/m;->h:Lp4/g7;

    .line 19
    .line 20
    iget-object v1, v1, Lp4/g7;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lya/c;

    .line 23
    .line 24
    iget-object v1, v1, Lya/c;->o:Lma/b0;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
