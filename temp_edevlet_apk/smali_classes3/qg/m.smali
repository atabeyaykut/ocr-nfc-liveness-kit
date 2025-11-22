.class public final Lqg/m;
.super Lh8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqg/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh8/a<",
        "Lqg/m$a;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh8/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()V
    .locals 0

    return-void
.end method

.method public final m()I
    .locals 1

    const v0, 0x7f0d008c

    return v0
.end method

.method public final n(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    new-instance v0, Lqg/m$a;

    invoke-direct {v0, p1}, Lqg/m$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method
