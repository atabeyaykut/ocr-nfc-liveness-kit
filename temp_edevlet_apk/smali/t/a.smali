.class public final Lt/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt/a$a;
    }
.end annotation


# instance fields
.field public final a:Lt/d;

.field public final b:Lp/h;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Lt/d;Lp/h;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/a;->a:Lt/d;

    iput-object p2, p0, Lt/a;->b:Lp/h;

    iput p3, p0, Lt/a;->c:I

    iput-boolean p4, p0, Lt/a;->d:Z

    if-lez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "durationMillis must be > 0."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    new-instance v7, Li/a;

    .line 2
    .line 3
    iget-object v8, p0, Lt/a;->a:Lt/d;

    .line 4
    .line 5
    invoke-interface {v8}, Lt/d;->e()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v9, p0, Lt/a;->b:Lp/h;

    .line 10
    .line 11
    invoke-virtual {v9}, Lp/h;->a()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v9}, Lp/h;->b()Lp/g;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v3, v0, Lp/g;->C:I

    .line 20
    .line 21
    iget v4, p0, Lt/a;->c:I

    .line 22
    .line 23
    instance-of v10, v9, Lp/n;

    .line 24
    .line 25
    if-eqz v10, :cond_1

    .line 26
    .line 27
    move-object v0, v9

    .line 28
    check-cast v0, Lp/n;

    .line 29
    .line 30
    iget-boolean v0, v0, Lp/n;->g:Z

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 39
    const/4 v5, 0x1

    .line 40
    :goto_1
    iget-boolean v6, p0, Lt/a;->d:Z

    .line 41
    .line 42
    move-object v0, v7

    .line 43
    invoke-direct/range {v0 .. v6}, Li/a;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZZ)V

    .line 44
    .line 45
    .line 46
    if-eqz v10, :cond_2

    .line 47
    .line 48
    invoke-interface {v8, v7}, Lr/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    instance-of v0, v9, Lp/d;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-interface {v8, v7}, Lr/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_2
    return-void
.end method
