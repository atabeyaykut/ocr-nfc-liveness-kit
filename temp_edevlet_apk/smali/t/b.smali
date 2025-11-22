.class public final Lt/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt/b$a;
    }
.end annotation


# instance fields
.field public final a:Lt/d;

.field public final b:Lp/h;


# direct methods
.method public constructor <init>(Lt/d;Lp/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/b;->a:Lt/d;

    iput-object p2, p0, Lt/b;->b:Lp/h;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt/b;->b:Lp/h;

    .line 2
    .line 3
    instance-of v1, v0, Lp/n;

    .line 4
    .line 5
    iget-object v2, p0, Lt/b;->a:Lt/d;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lp/n;

    .line 10
    .line 11
    iget-object v0, v0, Lp/n;->a:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-interface {v2, v0}, Lr/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v1, v0, Lp/d;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lp/h;->a()Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v2, v0}, Lr/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
