.class public final Lr0/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Z

.field public final c:Lp9/f;

.field public final d:Lp9/f;

.field public final e:Lp9/f;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    sget-object v0, Lp9/g;->a:Lp9/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-boolean p1, p0, Lr0/k0;->b:Z

    .line 7
    .line 8
    iput-object v0, p0, Lr0/k0;->c:Lp9/f;

    .line 9
    .line 10
    iput-object v0, p0, Lr0/k0;->d:Lp9/f;

    .line 11
    .line 12
    iput-object v0, p0, Lr0/k0;->e:Lp9/f;

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lr0/k0;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    return-void
.end method
