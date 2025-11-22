.class public final Lt/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lt/a$a;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    const/16 p1, 0x64

    .line 1
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt/a$a;->b:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lt/a$a;->c:Z

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "durationMillis must be > 0."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lt/d;Lp/h;)Lt/c;
    .locals 3

    .line 1
    instance-of v0, p2, Lp/n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lt/b;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Lt/b;-><init>(Lt/d;Lp/h;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    move-object v0, p2

    .line 12
    check-cast v0, Lp/n;

    .line 13
    .line 14
    iget v0, v0, Lp/n;->c:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Lt/b;

    .line 20
    .line 21
    invoke-direct {v0, p1, p2}, Lt/b;-><init>(Lt/d;Lp/h;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    new-instance v0, Lt/a;

    .line 26
    .line 27
    iget v1, p0, Lt/a$a;->b:I

    .line 28
    .line 29
    iget-boolean v2, p0, Lt/a$a;->c:Z

    .line 30
    .line 31
    invoke-direct {v0, p1, p2, v1, v2}, Lt/a;-><init>(Lt/d;Lp/h;IZ)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lt/a$a;

    if-eqz v1, :cond_1

    check-cast p1, Lt/a$a;

    iget v1, p1, Lt/a$a;->b:I

    iget v2, p0, Lt/a$a;->b:I

    if-ne v2, v1, :cond_1

    iget-boolean v1, p0, Lt/a$a;->c:Z

    iget-boolean p1, p1, Lt/a$a;->c:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lt/a$a;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lt/a$a;->c:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
