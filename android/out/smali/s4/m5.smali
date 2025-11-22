.class public final Ls4/m5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Ls4/h8;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ls4/m5;

.field public static final b:Lt6/c;

.field public static final c:Lt6/c;

.field public static final d:Lt6/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ls4/m5;

    .line 2
    .line 3
    invoke-direct {v0}, Ls4/m5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls4/m5;->a:Ls4/m5;

    .line 7
    .line 8
    sget-object v0, Ls4/y0;->a:Ls4/y0;

    .line 9
    .line 10
    new-instance v1, Ls4/v0;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2, v0}, Ls4/v0;-><init>(ILs4/y0;)V

    .line 14
    .line 15
    .line 16
    const-class v2, Ls4/z0;

    .line 17
    .line 18
    invoke-static {v2, v1}, Lab/b;->h(Ljava/lang/Class;Ls4/v0;)Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v3, Lt6/c;

    .line 23
    .line 24
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v4, "inferenceCommonLogEvent"

    .line 29
    .line 30
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    sput-object v3, Ls4/m5;->b:Lt6/c;

    .line 34
    .line 35
    new-instance v1, Ls4/v0;

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    invoke-direct {v1, v3, v0}, Ls4/v0;-><init>(ILs4/y0;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v1}, Lab/b;->h(Ljava/lang/Class;Ls4/v0;)Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v3, Lt6/c;

    .line 46
    .line 47
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v4, "imageInfo"

    .line 52
    .line 53
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    sput-object v3, Ls4/m5;->c:Lt6/c;

    .line 57
    .line 58
    new-instance v1, Ls4/v0;

    .line 59
    .line 60
    const/4 v3, 0x3

    .line 61
    invoke-direct {v1, v3, v0}, Ls4/v0;-><init>(ILs4/y0;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v1}, Lab/b;->h(Ljava/lang/Class;Ls4/v0;)Ljava/util/HashMap;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Lt6/c;

    .line 69
    .line 70
    invoke-static {v0}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v2, "recognizerOptions"

    .line 75
    .line 76
    invoke-direct {v1, v2, v0}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    sput-object v1, Ls4/m5;->d:Lt6/c;

    .line 80
    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ls4/h8;

    .line 2
    .line 3
    check-cast p2, Lt6/e;

    .line 4
    .line 5
    iget-object v0, p1, Ls4/h8;->a:Ls4/s6;

    .line 6
    .line 7
    sget-object v1, Ls4/m5;->b:Lt6/c;

    .line 8
    .line 9
    invoke-interface {p2, v1, v0}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 10
    .line 11
    .line 12
    sget-object v0, Ls4/m5;->c:Lt6/c;

    .line 13
    .line 14
    iget-object p1, p1, Ls4/h8;->b:Ls4/q6;

    .line 15
    .line 16
    invoke-interface {p2, v0, p1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 17
    .line 18
    .line 19
    sget-object p1, Ls4/m5;->d:Lt6/c;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-interface {p2, p1, v0}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 23
    .line 24
    .line 25
    return-void
.end method
