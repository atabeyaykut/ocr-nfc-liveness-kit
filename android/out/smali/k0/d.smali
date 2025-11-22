.class public final Lk0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/b;


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Lj0/c;

.field public final d:Lj0/d;

.field public final e:Lj0/f;

.field public final f:Lj0/f;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/graphics/Path$FillType;Lj0/c;Lj0/d;Lj0/f;Lj0/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lk0/d;->a:I

    iput-object p3, p0, Lk0/d;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lk0/d;->c:Lj0/c;

    iput-object p5, p0, Lk0/d;->d:Lj0/d;

    iput-object p6, p0, Lk0/d;->e:Lj0/f;

    iput-object p7, p0, Lk0/d;->f:Lj0/f;

    iput-object p1, p0, Lk0/d;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lk0/d;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Ld0/l;Ll0/b;)Lf0/c;
    .locals 1

    new-instance v0, Lf0/h;

    invoke-direct {v0, p1, p2, p0}, Lf0/h;-><init>(Ld0/l;Ll0/b;Lk0/d;)V

    return-object v0
.end method
