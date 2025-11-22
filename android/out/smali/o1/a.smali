.class public final Lo1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo1/e<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Lo1/b;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo1/a;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lv0/a;)Lo1/d;
    .locals 2

    .line 1
    sget-object v0, Lv0/a;->e:Lv0/a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lo1/c;->a:Lo1/c;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lo1/a;->b:Lo1/b;

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    new-instance p1, Lo1/b;

    .line 13
    .line 14
    iget v0, p0, Lo1/a;->a:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {p1, v0, v1}, Lo1/b;-><init>(IZ)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lo1/a;->b:Lo1/b;

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lo1/a;->b:Lo1/b;

    .line 23
    .line 24
    :goto_0
    return-object p1
.end method
