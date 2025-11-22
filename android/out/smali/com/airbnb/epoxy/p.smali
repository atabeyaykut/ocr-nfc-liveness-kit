.class public abstract Lcom/airbnb/epoxy/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/epoxy/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/epoxy/p$d;,
        Lcom/airbnb/epoxy/p$e;,
        Lcom/airbnb/epoxy/p$f;
    }
.end annotation


# static fields
.field private static final DELAY_TO_CHECK_ADAPTER_COUNT_MS:I = 0xbb8

.field private static final NO_OP_TIMER:Lcom/airbnb/epoxy/n0;

.field public static defaultDiffingHandler:Landroid/os/Handler;

.field public static defaultModelBuildingHandler:Landroid/os/Handler;

.field private static filterDuplicatesDefault:Z

.field private static globalDebugLoggingEnabled:Z

.field private static globalExceptionHandler:Lcom/airbnb/epoxy/p$d;


# instance fields
.field private final adapter:Lcom/airbnb/epoxy/q;

.field private final buildModelsRunnable:Ljava/lang/Runnable;

.field private debugObserver:Lcom/airbnb/epoxy/r;

.field private volatile filterDuplicates:Z

.field private volatile hasBuiltModelsEver:Z

.field private final helper:Lcom/airbnb/epoxy/h;

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/epoxy/p$e;",
            ">;"
        }
    .end annotation
.end field

.field private final modelBuildHandler:Landroid/os/Handler;

.field private modelInterceptorCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/epoxy/p$f;",
            ">;"
        }
    .end annotation
.end field

.field private modelsBeingBuilt:Lcom/airbnb/epoxy/j;

.field private recyclerViewAttachCount:I

.field private volatile requestedModelBuildType:I

.field private stagedModel:Lcom/airbnb/epoxy/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/epoxy/u<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile threadBuildingModels:Ljava/lang/Thread;

.field private timer:Lcom/airbnb/epoxy/n0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc5/u;

    invoke-direct {v0}, Lc5/u;-><init>()V

    sput-object v0, Lcom/airbnb/epoxy/p;->NO_OP_TIMER:Lcom/airbnb/epoxy/n0;

    sget-object v0, Lcom/airbnb/epoxy/e0;->b:Lcom/airbnb/epoxy/e0;

    iget-object v0, v0, Lcom/airbnb/epoxy/z;->a:Landroid/os/Handler;

    sput-object v0, Lcom/airbnb/epoxy/p;->defaultModelBuildingHandler:Landroid/os/Handler;

    sput-object v0, Lcom/airbnb/epoxy/p;->defaultDiffingHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/airbnb/epoxy/p;->filterDuplicatesDefault:Z

    sput-boolean v0, Lcom/airbnb/epoxy/p;->globalDebugLoggingEnabled:Z

    new-instance v0, Lcom/airbnb/epoxy/p$b;

    invoke-direct {v0}, Lcom/airbnb/epoxy/p$b;-><init>()V

    sput-object v0, Lcom/airbnb/epoxy/p;->globalExceptionHandler:Lcom/airbnb/epoxy/p$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/airbnb/epoxy/p;->defaultModelBuildingHandler:Landroid/os/Handler;

    sget-object v1, Lcom/airbnb/epoxy/p;->defaultDiffingHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/epoxy/p;-><init>(Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/airbnb/epoxy/p;->recyclerViewAttachCount:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/airbnb/epoxy/p;->interceptors:Ljava/util/List;

    .line 13
    .line 14
    sget-boolean v1, Lcom/airbnb/epoxy/p;->filterDuplicatesDefault:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/airbnb/epoxy/p;->filterDuplicates:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lcom/airbnb/epoxy/p;->threadBuildingModels:Ljava/lang/Thread;

    .line 20
    .line 21
    sget-object v1, Lcom/airbnb/epoxy/p;->NO_OP_TIMER:Lcom/airbnb/epoxy/n0;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/airbnb/epoxy/p;->timer:Lcom/airbnb/epoxy/n0;

    .line 24
    .line 25
    sget-object v1, Lcom/airbnb/epoxy/i;->a:Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    const-string v1, "Unable to invoke "

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Lcom/airbnb/epoxy/i;->a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    sget-object v1, Lcom/airbnb/epoxy/i;->b:Lcom/airbnb/epoxy/NoOpControllerHelper;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v3, 0x1

    .line 43
    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object p0, v3, v0

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/airbnb/epoxy/h;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    move-object v1, v3

    .line 54
    :goto_0
    iput-object v1, p0, Lcom/airbnb/epoxy/p;->helper:Lcom/airbnb/epoxy/h;

    .line 55
    .line 56
    iput v0, p0, Lcom/airbnb/epoxy/p;->requestedModelBuildType:I

    .line 57
    .line 58
    new-instance v0, Lcom/airbnb/epoxy/p$a;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/airbnb/epoxy/p$a;-><init>(Lcom/airbnb/epoxy/p;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/airbnb/epoxy/p;->buildModelsRunnable:Ljava/lang/Runnable;

    .line 64
    .line 65
    new-instance v0, Lcom/airbnb/epoxy/q;

    .line 66
    .line 67
    invoke-direct {v0, p0, p2}, Lcom/airbnb/epoxy/q;-><init>(Lcom/airbnb/epoxy/p;Landroid/os/Handler;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/airbnb/epoxy/p;->modelBuildHandler:Landroid/os/Handler;

    .line 73
    .line 74
    sget-boolean p1, Lcom/airbnb/epoxy/p;->globalDebugLoggingEnabled:Z

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/p;->setDebugLoggingEnabled(Z)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    instance-of p2, p1, Ljava/lang/RuntimeException;

    .line 86
    .line 87
    if-nez p2, :cond_2

    .line 88
    .line 89
    instance-of p2, p1, Ljava/lang/Error;

    .line 90
    .line 91
    if-eqz p2, :cond_1

    .line 92
    .line 93
    check-cast p1, Ljava/lang/Error;

    .line 94
    .line 95
    throw p1

    .line 96
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 97
    .line 98
    const-string v0, "Unable to get Epoxy helper class."

    .line 99
    .line 100
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw p2

    .line 104
    :cond_2
    check-cast p1, Ljava/lang/RuntimeException;

    .line 105
    .line 106
    throw p1

    .line 107
    :catch_1
    move-exception p1

    .line 108
    new-instance p2, Ljava/lang/RuntimeException;

    .line 109
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    throw p2

    .line 126
    :catch_2
    move-exception p1

    .line 127
    new-instance p2, Ljava/lang/RuntimeException;

    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    throw p2
.end method

.method public static synthetic access$002(Lcom/airbnb/epoxy/p;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/airbnb/epoxy/p;->threadBuildingModels:Ljava/lang/Thread;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/airbnb/epoxy/p;)Lcom/airbnb/epoxy/h;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/epoxy/p;->helper:Lcom/airbnb/epoxy/h;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/airbnb/epoxy/p;)I
    .locals 0

    iget p0, p0, Lcom/airbnb/epoxy/p;->recyclerViewAttachCount:I

    return p0
.end method

.method public static synthetic access$200(Lcom/airbnb/epoxy/p;)Lcom/airbnb/epoxy/j;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/epoxy/p;->modelsBeingBuilt:Lcom/airbnb/epoxy/j;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/airbnb/epoxy/p;Lcom/airbnb/epoxy/j;)Lcom/airbnb/epoxy/j;
    .locals 0

    iput-object p1, p0, Lcom/airbnb/epoxy/p;->modelsBeingBuilt:Lcom/airbnb/epoxy/j;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/airbnb/epoxy/p;)I
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/epoxy/p;->getExpectedModelCount()I

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/airbnb/epoxy/p;)Lcom/airbnb/epoxy/n0;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/epoxy/p;->timer:Lcom/airbnb/epoxy/n0;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/airbnb/epoxy/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/epoxy/p;->hasBuiltModelsEver:Z

    return p1
.end method

.method public static synthetic access$602(Lcom/airbnb/epoxy/p;Lcom/airbnb/epoxy/u;)Lcom/airbnb/epoxy/u;
    .locals 0

    iput-object p1, p0, Lcom/airbnb/epoxy/p;->stagedModel:Lcom/airbnb/epoxy/u;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/airbnb/epoxy/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/epoxy/p;->runInterceptors()V

    return-void
.end method

.method public static synthetic access$800(Lcom/airbnb/epoxy/p;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/p;->filterDuplicatesIfNeeded(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/airbnb/epoxy/p;)Lcom/airbnb/epoxy/q;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    return-object p0
.end method

.method private assertIsBuildingModels()V
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/epoxy/p;->isBuildingModels()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/airbnb/epoxy/c0;

    const-string v1, "Can only call this when inside the `buildModels` method"

    invoke-direct {v0, v1}, Lcom/airbnb/epoxy/c0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertNotBuildingModels()V
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/epoxy/p;->isBuildingModels()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/airbnb/epoxy/c0;

    const-string v1, "Cannot call this from inside `buildModels`"

    invoke-direct {v0, v1}, Lcom/airbnb/epoxy/c0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private filterDuplicatesIfNeeded(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/airbnb/epoxy/p;->filterDuplicates:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->timer:Lcom/airbnb/epoxy/n0;

    const-string v1, "Duplicates filtered"

    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/n0;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/epoxy/u;

    invoke-virtual {v2}, Lcom/airbnb/epoxy/u;->id()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    invoke-direct {p0, p1, v2}, Lcom/airbnb/epoxy/p;->findPositionOfDuplicate(Ljava/util/List;Lcom/airbnb/epoxy/u;)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/epoxy/u;

    if-gt v3, v4, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    new-instance v6, Lcom/airbnb/epoxy/c0;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Two models have the same ID. ID\'s must be unique!\nOriginal has position "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":\n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\nDuplicate has position "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/airbnb/epoxy/c0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/airbnb/epoxy/p;->onExceptionSwallowed(Ljava/lang/RuntimeException;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/airbnb/epoxy/p;->timer:Lcom/airbnb/epoxy/n0;

    invoke-interface {p1}, Lcom/airbnb/epoxy/n0;->stop()V

    return-void
.end method

.method private findPositionOfDuplicate(Ljava/util/List;Lcom/airbnb/epoxy/u;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;",
            "Lcom/airbnb/epoxy/u<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/epoxy/u;

    invoke-virtual {v2}, Lcom/airbnb/epoxy/u;->id()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/airbnb/epoxy/u;->id()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No duplicates in list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getExpectedModelCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    .line 2
    .line 3
    iget v0, v0, Lcom/airbnb/epoxy/q;->i:I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x19

    .line 9
    .line 10
    :goto_0
    return v0
.end method

.method private runInterceptors()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->modelInterceptorCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/epoxy/p$f;

    invoke-interface {v1}, Lcom/airbnb/epoxy/p$f;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->timer:Lcom/airbnb/epoxy/n0;

    const-string v1, "Interceptors executed"

    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/n0;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/epoxy/p$e;

    invoke-interface {v1}, Lcom/airbnb/epoxy/p$e;->a()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->timer:Lcom/airbnb/epoxy/n0;

    invoke-interface {v0}, Lcom/airbnb/epoxy/n0;->stop()V

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->modelInterceptorCallbacks:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/epoxy/p$f;

    invoke-interface {v1}, Lcom/airbnb/epoxy/p$f;->a()V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/epoxy/p;->modelInterceptorCallbacks:Ljava/util/List;

    return-void
.end method

.method public static setGlobalDebugLoggingEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/airbnb/epoxy/p;->globalDebugLoggingEnabled:Z

    return-void
.end method

.method public static setGlobalDuplicateFilteringDefault(Z)V
    .locals 0

    sput-boolean p0, Lcom/airbnb/epoxy/p;->filterDuplicatesDefault:Z

    return-void
.end method

.method public static setGlobalExceptionHandler(Lcom/airbnb/epoxy/p$d;)V
    .locals 0
    .param p0    # Lcom/airbnb/epoxy/p$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/airbnb/epoxy/p;->globalExceptionHandler:Lcom/airbnb/epoxy/p$d;

    return-void
.end method


# virtual methods
.method public add(Lcom/airbnb/epoxy/u;)V
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/airbnb/epoxy/u;->addTo(Lcom/airbnb/epoxy/p;)V

    return-void
.end method

.method public add(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/epoxy/u<",
            "*>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->modelsBeingBuilt:Lcom/airbnb/epoxy/j;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/epoxy/u;

    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/p;->add(Lcom/airbnb/epoxy/u;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs add([Lcom/airbnb/epoxy/u;)V
    .locals 3
    .param p1    # [Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->modelsBeingBuilt:Lcom/airbnb/epoxy/j;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/airbnb/epoxy/p;->add(Lcom/airbnb/epoxy/u;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addAfterInterceptorCallback(Lcom/airbnb/epoxy/p$f;)V
    .locals 1

    invoke-direct {p0}, Lcom/airbnb/epoxy/p;->assertIsBuildingModels()V

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->modelInterceptorCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/epoxy/p;->modelInterceptorCallbacks:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->modelInterceptorCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCurrentlyStagedModelIfExists()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->stagedModel:Lcom/airbnb/epoxy/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/airbnb/epoxy/u;->addTo(Lcom/airbnb/epoxy/p;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/epoxy/p;->stagedModel:Lcom/airbnb/epoxy/u;

    return-void
.end method

.method public addInterceptor(Lcom/airbnb/epoxy/p$e;)V
    .locals 1
    .param p1    # Lcom/airbnb/epoxy/p$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInternal(Lcom/airbnb/epoxy/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/airbnb/epoxy/p;->assertIsBuildingModels()V

    invoke-virtual {p1}, Lcom/airbnb/epoxy/u;->hasDefaultId()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/epoxy/u;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/p;->clearModelFromStaging(Lcom/airbnb/epoxy/u;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/airbnb/epoxy/u;->controllerToStageTo:Lcom/airbnb/epoxy/p;

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->modelsBeingBuilt:Lcom/airbnb/epoxy/j;

    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/g0;->V(Lcom/airbnb/epoxy/u;)Z

    return-void

    :cond_0
    new-instance p1, Lcom/airbnb/epoxy/c0;

    const-string v0, "You cannot hide a model in an EpoxyController. Use `addIf` to conditionally add a model instead."

    invoke-direct {p1, v0}, Lcom/airbnb/epoxy/c0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/airbnb/epoxy/c0;

    const-string v0, "You must set an id on a model before adding it. Use the @AutoModel annotation if you want an id to be automatically generated for you."

    invoke-direct {p1, v0}, Lcom/airbnb/epoxy/c0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addModelBuildListener(Lcom/airbnb/epoxy/j0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/airbnb/epoxy/q;->j:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract buildModels()V
.end method

.method public declared-synchronized cancelPendingModelBuild()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/airbnb/epoxy/p;->requestedModelBuildType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/epoxy/p;->requestedModelBuildType:I

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->modelBuildHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/airbnb/epoxy/p;->buildModelsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearModelFromStaging(Lcom/airbnb/epoxy/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->stagedModel:Lcom/airbnb/epoxy/u;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/epoxy/p;->addCurrentlyStagedModelIfExists()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/epoxy/p;->stagedModel:Lcom/airbnb/epoxy/u;

    return-void
.end method

.method public getAdapter()Lcom/airbnb/epoxy/q;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    return-object v0
.end method

.method public getFirstIndexOfModelInBuildingList(Lcom/airbnb/epoxy/u;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/u<",
            "*>;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/airbnb/epoxy/p;->assertIsBuildingModels()V

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->modelsBeingBuilt:Lcom/airbnb/epoxy/j;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/airbnb/epoxy/p;->modelsBeingBuilt:Lcom/airbnb/epoxy/j;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getModelCountBuiltSoFar()I
    .locals 1

    invoke-direct {p0}, Lcom/airbnb/epoxy/p;->assertIsBuildingModels()V

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->modelsBeingBuilt:Lcom/airbnb/epoxy/j;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    .line 2
    .line 3
    iget v0, v0, Lcom/airbnb/epoxy/e;->a:I

    .line 4
    .line 5
    return v0
.end method

.method public getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/airbnb/epoxy/e;->e:Lcom/airbnb/epoxy/e$a;

    .line 4
    .line 5
    return-object v0
.end method

.method public hasPendingModelBuild()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/epoxy/p;->requestedModelBuildType:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->threadBuildingModels:Ljava/lang/Thread;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/airbnb/epoxy/q;->g:Lcom/airbnb/epoxy/d;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/airbnb/epoxy/d;->d:Lcom/airbnb/epoxy/d$b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/airbnb/epoxy/d$b;->b()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public isBuildingModels()Z
    .locals 2

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->threadBuildingModels:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDebugLoggingEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->timer:Lcom/airbnb/epoxy/n0;

    sget-object v1, Lcom/airbnb/epoxy/p;->NO_OP_TIMER:Lcom/airbnb/epoxy/n0;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDuplicateFilteringEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/epoxy/p;->filterDuplicates:Z

    return v0
.end method

.method public isModelAddedMultipleTimes(Lcom/airbnb/epoxy/u;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/u<",
            "*>;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/airbnb/epoxy/p;->assertIsBuildingModels()V

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->modelsBeingBuilt:Lcom/airbnb/epoxy/j;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/airbnb/epoxy/p;->modelsBeingBuilt:Lcom/airbnb/epoxy/j;

    invoke-virtual {v4, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-le v3, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isMultiSpan()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    .line 2
    .line 3
    iget v0, v0, Lcom/airbnb/epoxy/e;->a:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    return v1
.end method

.method public isStickyHeader(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public moveModel(II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/airbnb/epoxy/p;->assertNotBuildingModels()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/airbnb/epoxy/q;->g:Lcom/airbnb/epoxy/d;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/airbnb/epoxy/d;->f:Ljava/util/List;

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/airbnb/epoxy/u;

    .line 23
    .line 24
    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Lcom/airbnb/epoxy/q;->f:Lcom/airbnb/epoxy/h0;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    iput-boolean v3, v2, Lcom/airbnb/epoxy/h0;->a:Z

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v0, Lcom/airbnb/epoxy/q;->f:Lcom/airbnb/epoxy/h0;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    iput-boolean p2, p1, Lcom/airbnb/epoxy/h0;->a:Z

    .line 39
    .line 40
    iget-object p1, v0, Lcom/airbnb/epoxy/q;->g:Lcom/airbnb/epoxy/d;

    .line 41
    .line 42
    monitor-enter p1

    .line 43
    :try_start_0
    invoke-virtual {p1}, Lcom/airbnb/epoxy/d;->a()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iget-object v2, p1, Lcom/airbnb/epoxy/d;->d:Lcom/airbnb/epoxy/d$b;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/airbnb/epoxy/d$b;->c()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {p1, v2, v1}, Lcom/airbnb/epoxy/d;->b(ILjava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit p1

    .line 57
    if-eqz p2, :cond_0

    .line 58
    .line 59
    iget-object p1, v0, Lcom/airbnb/epoxy/q;->h:Lcom/airbnb/epoxy/p;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/airbnb/epoxy/p;->requestModelBuild()V

    .line 62
    .line 63
    .line 64
    :cond_0
    const/16 p1, 0x1f4

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/p;->requestDelayedModelBuild(I)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p2

    .line 71
    monitor-exit p1

    .line 72
    throw p2
.end method

.method public notifyModelChanged(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/airbnb/epoxy/p;->assertNotBuildingModels()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/airbnb/epoxy/q;->g:Lcom/airbnb/epoxy/d;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/airbnb/epoxy/d;->f:Ljava/util/List;

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/airbnb/epoxy/q;->f:Lcom/airbnb/epoxy/h0;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    iput-boolean v3, v2, Lcom/airbnb/epoxy/h0;->a:Z

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v0, Lcom/airbnb/epoxy/q;->f:Lcom/airbnb/epoxy/h0;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iput-boolean v2, p1, Lcom/airbnb/epoxy/h0;->a:Z

    .line 30
    .line 31
    iget-object p1, v0, Lcom/airbnb/epoxy/q;->g:Lcom/airbnb/epoxy/d;

    .line 32
    .line 33
    monitor-enter p1

    .line 34
    :try_start_0
    invoke-virtual {p1}, Lcom/airbnb/epoxy/d;->a()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v3, p1, Lcom/airbnb/epoxy/d;->d:Lcom/airbnb/epoxy/d$b;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/airbnb/epoxy/d$b;->c()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {p1, v3, v1}, Lcom/airbnb/epoxy/d;->b(ILjava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit p1

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    iget-object p1, v0, Lcom/airbnb/epoxy/q;->h:Lcom/airbnb/epoxy/p;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/airbnb/epoxy/p;->requestModelBuild()V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p1

    .line 58
    throw v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onAttachedToRecyclerViewInternal(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    iget v0, p0, Lcom/airbnb/epoxy/p;->recyclerViewAttachCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/airbnb/epoxy/p;->recyclerViewAttachCount:I

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/airbnb/epoxy/e0;->b:Lcom/airbnb/epoxy/e0;

    iget-object v0, v0, Lcom/airbnb/epoxy/z;->a:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/epoxy/p$c;

    invoke-direct {v1, p0}, Lcom/airbnb/epoxy/p$c;-><init>(Lcom/airbnb/epoxy/p;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/p;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onDetachedFromRecyclerViewInternal(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget v0, p0, Lcom/airbnb/epoxy/p;->recyclerViewAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/epoxy/p;->recyclerViewAttachCount:I

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/p;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onExceptionSwallowed(Ljava/lang/RuntimeException;)V
    .locals 0
    .param p1    # Ljava/lang/RuntimeException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p1, Lcom/airbnb/epoxy/p;->globalExceptionHandler:Lcom/airbnb/epoxy/p$d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onModelBound(Lcom/airbnb/epoxy/x;Lcom/airbnb/epoxy/u;ILcom/airbnb/epoxy/u;)V
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/x;",
            "Lcom/airbnb/epoxy/u<",
            "*>;I",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onModelUnbound(Lcom/airbnb/epoxy/x;Lcom/airbnb/epoxy/u;)V
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/x;",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/airbnb/epoxy/e;->c:Lcom/airbnb/epoxy/f;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/airbnb/epoxy/f;->a:Landroidx/collection/LongSparseArray;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gtz v1, :cond_2

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const-string v1, "saved_state_view_holders"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/airbnb/epoxy/p0;

    .line 22
    .line 23
    iput-object p1, v0, Lcom/airbnb/epoxy/e;->d:Lcom/airbnb/epoxy/p0;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "Tried to restore instance state, but onSaveInstanceState was never called."

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    :goto_0
    return-void

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v0, "State cannot be restored once views have been bound. It should be done before adding the adapter to the recycler view."

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/airbnb/epoxy/e;->c:Lcom/airbnb/epoxy/f;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/airbnb/epoxy/f;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :goto_0
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/airbnb/epoxy/f$a;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/airbnb/epoxy/f$a;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/airbnb/epoxy/f$a;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/airbnb/epoxy/x;

    .line 23
    .line 24
    iget-object v3, v0, Lcom/airbnb/epoxy/e;->d:Lcom/airbnb/epoxy/p0;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Lcom/airbnb/epoxy/p0;->b(Lcom/airbnb/epoxy/x;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, v0, Lcom/airbnb/epoxy/e;->d:Lcom/airbnb/epoxy/p0;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "Must have stable ids when saving view holder state"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    :goto_1
    const-string v1, "saved_state_view_holders"

    .line 54
    .line 55
    iget-object v0, v0, Lcom/airbnb/epoxy/e;->d:Lcom/airbnb/epoxy/p0;

    .line 56
    .line 57
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onViewAttachedToWindow(Lcom/airbnb/epoxy/x;Lcom/airbnb/epoxy/u;)V
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/x;",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/airbnb/epoxy/x;Lcom/airbnb/epoxy/u;)V
    .locals 0
    .param p1    # Lcom/airbnb/epoxy/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/epoxy/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/x;",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public removeInterceptor(Lcom/airbnb/epoxy/p$e;)V
    .locals 1
    .param p1    # Lcom/airbnb/epoxy/p$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeModelBuildListener(Lcom/airbnb/epoxy/j0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/airbnb/epoxy/q;->j:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public declared-synchronized requestDelayedModelBuild(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/airbnb/epoxy/p;->isBuildingModels()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/airbnb/epoxy/p;->requestedModelBuildType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/epoxy/p;->cancelPendingModelBuild()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/airbnb/epoxy/p;->requestedModelBuildType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    :try_start_1
    iput v1, p0, Lcom/airbnb/epoxy/p;->requestedModelBuildType:I

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->modelBuildHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/airbnb/epoxy/p;->buildModelsRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    new-instance p1, Lcom/airbnb/epoxy/c0;

    const-string v0, "Cannot call `requestDelayedModelBuild` from inside `buildModels`"

    invoke-direct {p1, v0}, Lcom/airbnb/epoxy/c0;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestModelBuild()V
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/epoxy/p;->isBuildingModels()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/airbnb/epoxy/p;->hasBuiltModelsEver:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/epoxy/p;->requestDelayedModelBuild(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->buildModelsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/airbnb/epoxy/c0;

    const-string v1, "Cannot call `requestModelBuild` from inside `buildModels`"

    invoke-direct {v0, v1}, Lcom/airbnb/epoxy/c0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDebugLoggingEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/airbnb/epoxy/p;->assertNotBuildingModels()V

    if-eqz p1, :cond_1

    new-instance p1, Lcom/airbnb/epoxy/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/airbnb/epoxy/k;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/airbnb/epoxy/p;->timer:Lcom/airbnb/epoxy/n0;

    iget-object p1, p0, Lcom/airbnb/epoxy/p;->debugObserver:Lcom/airbnb/epoxy/r;

    if-nez p1, :cond_0

    new-instance p1, Lcom/airbnb/epoxy/r;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/airbnb/epoxy/r;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/airbnb/epoxy/p;->debugObserver:Lcom/airbnb/epoxy/r;

    :cond_0
    iget-object p1, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->debugObserver:Lcom/airbnb/epoxy/r;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/airbnb/epoxy/p;->NO_OP_TIMER:Lcom/airbnb/epoxy/n0;

    iput-object p1, p0, Lcom/airbnb/epoxy/p;->timer:Lcom/airbnb/epoxy/n0;

    iget-object p1, p0, Lcom/airbnb/epoxy/p;->debugObserver:Lcom/airbnb/epoxy/r;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFilterDuplicates(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/epoxy/p;->filterDuplicates:Z

    return-void
.end method

.method public setSpanCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/p;->adapter:Lcom/airbnb/epoxy/q;

    .line 2
    .line 3
    iput p1, v0, Lcom/airbnb/epoxy/e;->a:I

    .line 4
    .line 5
    return-void
.end method

.method public setStagedModel(Lcom/airbnb/epoxy/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/epoxy/p;->stagedModel:Lcom/airbnb/epoxy/u;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/epoxy/p;->addCurrentlyStagedModelIfExists()V

    :cond_0
    iput-object p1, p0, Lcom/airbnb/epoxy/p;->stagedModel:Lcom/airbnb/epoxy/u;

    return-void
.end method

.method public setupStickyHeaderView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public teardownStickyHeaderView(Landroid/view/View;)V
    .locals 0

    return-void
.end method
