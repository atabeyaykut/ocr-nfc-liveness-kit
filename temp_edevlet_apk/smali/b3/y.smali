.class public final Lb3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx2/b<",
        "Lb3/x;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk9/a;)V
    .locals 2

    sget-object v0, Lb3/f$a;->a:Lb3/f;

    sget-object v1, Lb3/h$a;->a:Lb3/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/y;->a:Lk9/a;

    iput-object v0, p0, Lb3/y;->b:Lk9/a;

    iput-object v1, p0, Lb3/y;->c:Lk9/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lb3/y;->a:Lk9/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lb3/y;->b:Lk9/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Lb3/y;->c:Lk9/a;

    .line 18
    .line 19
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    new-instance v3, Lb3/x;

    .line 30
    .line 31
    invoke-direct {v3, v0, v2, v1}, Lb3/x;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v3
.end method
