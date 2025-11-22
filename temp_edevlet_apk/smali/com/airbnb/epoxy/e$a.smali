.class public final Lcom/airbnb/epoxy/e$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/airbnb/epoxy/e;


# direct methods
.method public constructor <init>(Lcom/airbnb/epoxy/e;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/epoxy/e$a;->a:Lcom/airbnb/epoxy/e;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/e$a;->a:Lcom/airbnb/epoxy/e;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/e;->b(I)Lcom/airbnb/epoxy/u;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/airbnb/epoxy/e;->a:I

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/airbnb/epoxy/e;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {v1, v2, p1, v3}, Lcom/airbnb/epoxy/u;->spanSize(III)I

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/e;->d(Ljava/lang/RuntimeException;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1
.end method
