.class public abstract Lr0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a([Lda/l;)Lr0/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lda/l<",
            "**>;)",
            "Lr0/h;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lr0/z0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lr0/z0;->a:Lr0/z0;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, Lr0/e1;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lr0/e1;

    .line 13
    .line 14
    const-string v2, ","

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    move-object v3, p0

    .line 22
    check-cast v3, Lr0/e1;

    .line 23
    .line 24
    iget-object v3, v3, Lr0/e1;->a:Ljava/lang/String;

    .line 25
    .line 26
    const-string v4, "_"

    .line 27
    .line 28
    invoke-static {v1, v3, v4}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x0

    .line 33
    sget-object v5, Lr0/h$a;->a:Lr0/h$a;

    .line 34
    .line 35
    const/16 v6, 0x1c

    .line 36
    .line 37
    move-object v1, p1

    .line 38
    invoke-static/range {v1 .. v6}, Lm9/k;->v0([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Lr0/e1;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    move-object p1, v0

    .line 46
    :goto_0
    return-object p1

    .line 47
    :cond_1
    new-instance p1, Lj7/p;

    .line 48
    .line 49
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p1
.end method
