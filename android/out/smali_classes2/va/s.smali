.class public final Lva/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lva/s;


# instance fields
.field public final a:Lva/v;

.field public final b:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "Llb/c;",
            "Lva/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lva/s;

    .line 2
    .line 3
    sget-object v1, Lva/q;->a:Llb/c;

    .line 4
    .line 5
    sget-object v1, Ll9/d;->e:Ll9/d;

    .line 6
    .line 7
    const-string v2, "configuredKotlinVersion"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lva/q;->d:Lva/r;

    .line 13
    .line 14
    iget-object v3, v2, Lva/r;->b:Ll9/d;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget v3, v3, Ll9/d;->d:I

    .line 19
    .line 20
    iget v1, v1, Ll9/d;->d:I

    .line 21
    .line 22
    sub-int/2addr v3, v1

    .line 23
    if-gtz v3, :cond_0

    .line 24
    .line 25
    iget-object v1, v2, Lva/r;->c:Lva/b0;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, v2, Lva/r;->a:Lva/b0;

    .line 29
    .line 30
    :goto_0
    const-string v2, "globalReportLevel"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v2, Lva/b0;->c:Lva/b0;

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v2, v1

    .line 42
    :goto_1
    new-instance v3, Lva/v;

    .line 43
    .line 44
    invoke-direct {v3, v1, v2}, Lva/v;-><init>(Lva/b0;Lva/b0;)V

    .line 45
    .line 46
    .line 47
    sget-object v1, Lva/s$a;->a:Lva/s$a;

    .line 48
    .line 49
    invoke-direct {v0, v3, v1}, Lva/s;-><init>(Lva/v;Lva/s$a;)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lva/s;->d:Lva/s;

    .line 53
    .line 54
    return-void
.end method

.method public constructor <init>(Lva/v;Lva/s$a;)V
    .locals 1

    .line 1
    const-string v0, "getReportLevelForAnnotation"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lva/s;->a:Lva/v;

    .line 10
    .line 11
    iput-object p2, p0, Lva/s;->b:Lx9/l;

    .line 12
    .line 13
    iget-boolean p1, p1, Lva/v;->d:Z

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    sget-object p1, Lva/q;->a:Llb/c;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lva/s$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object p2, Lva/b0;->b:Lva/b0;

    .line 24
    .line 25
    if-ne p1, p2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 31
    :goto_1
    iput-boolean p1, p0, Lva/s;->c:Z

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JavaTypeEnhancementState(jsr305="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lva/s;->a:Lva/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getReportLevelForAnnotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lva/s;->b:Lx9/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
