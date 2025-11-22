.class public final synthetic La3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/b$a;


# instance fields
.field public final synthetic a:La3/m;

.field public final synthetic b:Lu2/s;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(La3/m;Lu2/s;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/g;->a:La3/m;

    iput-object p2, p0, La3/g;->b:Lu2/s;

    iput p3, p0, La3/g;->c:I

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, La3/g;->c:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, La3/g;->a:La3/m;

    .line 6
    .line 7
    iget-object v1, v1, La3/m;->d:La3/p;

    .line 8
    .line 9
    iget-object v2, p0, La3/g;->b:Lu2/s;

    .line 10
    .line 11
    invoke-interface {v1, v2, v0}, La3/p;->b(Lu2/s;I)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method
