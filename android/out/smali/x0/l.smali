.class public abstract Lx0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx0/l$b;

.field public static final b:Lx0/l$c;

.field public static final c:Lx0/l$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx0/l$a;

    invoke-direct {v0}, Lx0/l$a;-><init>()V

    new-instance v0, Lx0/l$b;

    invoke-direct {v0}, Lx0/l$b;-><init>()V

    sput-object v0, Lx0/l;->a:Lx0/l$b;

    new-instance v0, Lx0/l$c;

    invoke-direct {v0}, Lx0/l$c;-><init>()V

    sput-object v0, Lx0/l;->b:Lx0/l$c;

    new-instance v0, Lx0/l$d;

    invoke-direct {v0}, Lx0/l$d;-><init>()V

    new-instance v0, Lx0/l$e;

    invoke-direct {v0}, Lx0/l$e;-><init>()V

    sput-object v0, Lx0/l;->c:Lx0/l$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c(Lv0/a;)Z
.end method

.method public abstract d(ZLv0/a;Lv0/c;)Z
.end method
