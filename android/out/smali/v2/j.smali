.class public final Lv2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx2/b<",
        "Lv2/i;",
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
            "Ld3/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lk9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/a<",
            "Ld3/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx2/c;)V
    .locals 2

    sget-object v0, Ld3/b$a;->a:Ld3/b;

    sget-object v1, Ld3/c$a;->a:Ld3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/j;->a:Lk9/a;

    iput-object v0, p0, Lv2/j;->b:Lk9/a;

    iput-object v1, p0, Lv2/j;->c:Lk9/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lv2/j;->a:Lk9/a;

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
    iget-object v1, p0, Lv2/j;->b:Lk9/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ld3/a;

    .line 16
    .line 17
    iget-object v2, p0, Lv2/j;->c:Lk9/a;

    .line 18
    .line 19
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ld3/a;

    .line 24
    .line 25
    new-instance v3, Lv2/i;

    .line 26
    .line 27
    invoke-direct {v3, v0, v1, v2}, Lv2/i;-><init>(Landroid/content/Context;Ld3/a;Ld3/a;)V

    .line 28
    .line 29
    .line 30
    return-object v3
.end method
