.class public final Lcom/airbnb/epoxy/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/airbnb/epoxy/d$a;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/airbnb/epoxy/d;


# direct methods
.method public constructor <init>(Lcom/airbnb/epoxy/d;Lcom/airbnb/epoxy/d$a;ILcom/airbnb/epoxy/j;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/epoxy/b;->e:Lcom/airbnb/epoxy/d;

    iput-object p2, p0, Lcom/airbnb/epoxy/b;->a:Lcom/airbnb/epoxy/d$a;

    iput p3, p0, Lcom/airbnb/epoxy/b;->b:I

    iput-object p4, p0, Lcom/airbnb/epoxy/b;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/airbnb/epoxy/b;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/b;->a:Lcom/airbnb/epoxy/d$a;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/airbnb/epoxy/m;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/airbnb/epoxy/b;->d:Ljava/util/List;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/airbnb/epoxy/b;->c:Ljava/util/List;

    .line 12
    .line 13
    invoke-direct {v1, v2, v3, v0}, Lcom/airbnb/epoxy/m;-><init>(Ljava/util/List;Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/airbnb/epoxy/b;->e:Lcom/airbnb/epoxy/d;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v2, Lcom/airbnb/epoxy/e0;->c:Lcom/airbnb/epoxy/e0;

    .line 22
    .line 23
    new-instance v4, Lcom/airbnb/epoxy/c;

    .line 24
    .line 25
    iget v5, p0, Lcom/airbnb/epoxy/b;->b:I

    .line 26
    .line 27
    invoke-direct {v4, v5, v0, v1, v3}, Lcom/airbnb/epoxy/c;-><init>(ILcom/airbnb/epoxy/d;Lcom/airbnb/epoxy/m;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v4}, Lcom/airbnb/epoxy/z;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
