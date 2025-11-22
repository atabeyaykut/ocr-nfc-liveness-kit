.class public final Lv2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx2/b<",
        "Lv2/k;",
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
            "Lv2/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx2/c;Lv2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/l;->a:Lk9/a;

    iput-object p2, p0, Lv2/l;->b:Lk9/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lv2/l;->a:Lk9/a;

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
    iget-object v1, p0, Lv2/l;->b:Lk9/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lv2/k;

    .line 16
    .line 17
    check-cast v1, Lv2/i;

    .line 18
    .line 19
    invoke-direct {v2, v0, v1}, Lv2/k;-><init>(Landroid/content/Context;Lv2/i;)V

    .line 20
    .line 21
    .line 22
    return-object v2
.end method
