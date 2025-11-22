.class public final Lk0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj0/b;

.field public final c:Lj0/b;

.field public final d:Lj0/l;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lj0/b;Lj0/b;Lj0/l;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lk0/j;->b:Lj0/b;

    iput-object p3, p0, Lk0/j;->c:Lj0/b;

    iput-object p4, p0, Lk0/j;->d:Lj0/l;

    iput-boolean p5, p0, Lk0/j;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ld0/l;Ll0/b;)Lf0/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lf0/p;

    invoke-direct {v0, p1, p2, p0}, Lf0/p;-><init>(Ld0/l;Ll0/b;Lk0/j;)V

    return-object v0
.end method
